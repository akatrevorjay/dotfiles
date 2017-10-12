import collections
import six
import sys
import types
import re
import pygments
from pprint import pformat, pprint


class PyInfoMinimal(object):
    PY2 = sys.version_info[0] == 2
    PY3 = sys.version_info[0] == 3

    if PY3:
        string_types = str,
        text_type = str
        binary_type = bytes
    else:
        string_types = basestring,
        text_type = unicode
        binary_type = str


class PyInfo(object):
    PY2 = sys.version_info[0] == 2
    PY3 = sys.version_info[0] == 3

    if PY3:
        string_types = str,
        text_type = str
        binary_type = bytes
        integer_types = int,
        class_types = type,

        maxsize = sys.maxsize
    else:  # PY2
        string_types = basestring,
        text_type = unicode
        binary_type = str
        integer_types = (int, long)
        class_types = (type, types.ClassType)

        if sys.platform.startswith("java"):
            # Jython always uses 32 bits.
            maxsize = int((1 << 31) - 1)
        else:
            # It's possible to have sizeof(long) != sizeof(Py_ssize_t).
            class X(object):

                def __len__(self):
                    return 1 << 31

            try:
                len(X())
            except OverflowError:
                # 32-bit
                maxsize = int((1 << 31) - 1)
            else:
                # 64-bit
                maxsize = int((1 << 63) - 1)
            del X


class ProxyMutableMapping(collections.MutableMapping):
    """Proxies access to an existing dict-like object."""

    def __init__(self, mapping, fancy_repr=True, dictify_repr=False):
        """
        :param collections.MutableMapping mapping: Dict-like object to wrap
        :param bool fancy_repr: If True, show fancy repr, otherwise just show dict's
        :param bool dictify_repr: If True, cast mapping to a dict on repr
        """
        self.__mapping = mapping
        self.__fancy_repr = fancy_repr
        self.__dictify_repr = dictify_repr

    def __repr__(self):
        if not self.__fancy_repr:
            return '%s' % dict(self)

        mapping = self.__mapping
        if self.__dictify_repr:
            mapping = dict(mapping)

        return '<%s %s>' % (self.__class__.__name__, mapping)

    def __contains__(self, item):
        return item in self.__mapping

    def __getitem__(self, item):
        return self.__mapping[item]

    def __setitem__(self, key, value):
        self.__mapping[key] = value

    def __delitem__(self, key):
        del self.__mapping[key]

    def __iter__(self):
        return iter(self.__mapping)

    def __len__(self):
        return len(self.__mapping)


class PrefixedProxyMutableMapping(ProxyMutableMapping):

    def __init__(self, prefix, mapping, only_prefixed=True, fancy_repr=True, dictify_repr=False):
        """
        :param str prefix: Prefix to add/remove from keys.
        :param collections.MutableMapping mapping: Dict-like object to wrap
        :param bool fancy_repr: If True, show fancy repr, otherwise just show dict's
        :param bool dictify_repr: If True, cast mapping to a dict on repr
        """
        self.__prefix = prefix
        self.__prefix_len = len(prefix)
        self.__only_prefixed = only_prefixed
        super(PrefixedProxyMutableMapping, self).__init__(
            mapping,
            fancy_repr=fancy_repr,
            dictify_repr=dictify_repr,
        )

    def __key_add_prefix__(self, key):
        return self.__prefix + key

    def __key_remove_prefix__(self, key):
        return key[self.__prefix_len:]

    def __key_allowed__(self, key):
        if self.__only_prefixed:
            if isinstance(key, six.string_types):
                if not key.startswith(self.__prefix):
                    return False
            else:
                return False
        return True

    def __iter__(self):
        orig_iter = super(PrefixedProxyMutableMapping, self).__iter__()
        return (self.__key_remove_prefix__(key) for key in orig_iter if self.__key_allowed__(key))

    def __contains__(self, item):
        item = self.__key_add_prefix__(item)
        return super(PrefixedProxyMutableMapping, self).__contains__(item)

    def __getitem__(self, item):
        item = self.__key_add_prefix__(item)
        return super(PrefixedProxyMutableMapping, self).__getitem__(item)

    def __setitem__(self, item, value):
        item = self.__key_remove_prefix__(item)
        return super(PrefixedProxyMutableMapping, self).__setitem__(item, value)

    def __delitem__(self, item):
        item = self.__key_add_prefix__(item)
        return super(PrefixedProxyMutableMapping, self).__delitem__(item)


class multidict(collections.OrderedDict):
    """Simple multi-value ordered dict."""
    _unique = 0

    def __setitem__(self, key, val):
        if isinstance(val, dict) and key in self:
            self._unique += 1
            key += str(self._unique)
        dict.__setitem__(self, key, val)


def ensure_encoded_bytes(s, encoding='utf-8', errors='strict', allowed_types=(bytes, bytearray, memoryview)):
    """
    Ensure string is encoded as byteslike; convert using specified parameters if we have to.

    :param str|bytes|bytesarray|memoryview s: string/byteslike
    :param str encoding: Decode using this encoding
    :param str errors: How to handle errors
    :return bytes|bytesarray|memoryview: Encoded string as str
    """
    if isinstance(s, allowed_types):
        return s
    else:
        return s.encode(encoding=encoding, errors=errors)


def ensure_decoded_text(s, encoding='utf-8', errors='strict', allowed_types=(six.text_type,)):
    """
    Ensure string is decoded (eg unicode); convert using specified parameters if we have to.

    :param str|bytes|bytesarray|memoryview s: string/bytes
    :param str encoding: Decode using this encoding
    :param str errors: How to handle errors
    :return bytes|bytesarray|memoryview: Decoded string as bytes

    :return: Encoded string
    :rtype: bytes
    """
    if not isinstance(s, allowed_types):
        return s.decode(encoding=encoding, errors=errors)
    else:
        return s


def bind(instance, func, as_name):
    """
    Turn a function to a bound method on an instance

    >>> class Foo(object):
    ...     def __init__(self, x, y):
    ...         self.x = x
    ...         self.y = y
    >>> foo = Foo(2, 3)
    >>> my_unbound_method = lambda self: self.x * self.y
    >>> bind(foo, my_unbound_method, 'multiply')
    >>> # noinspection PyUnresolvedReferences
    ... foo.multiply()
    <<< 6

    :param object instance: some object
    :param callable func: unbound method (i.e. a function that takes `self` argument, that you now
        want to be bound to this class as a method)
    :param str as_name: name of the method to create on the object
    """
    setattr(instance, as_name, func.__get__(instance, instance.__class__))


def islurp(filename, mode='r', allow_stdin=True):
    """
    Read a file and yield each line.
    If filename is '-' and allow_stdin=True (default), read from stdin.
    """
    fh = None
    try:
        if filename == '-' and allow_stdin:
            fh = sys.stdin
        else:
            fh = open(filename, mode)

        while True:
            line = fh.readline()
            if line == '':  # EOF
                break
            yield line
    finally:
        if fh and fh != sys.stdin:
            fh.close()


def burp(filename, contents, mode='w', allow_stdout=True):
    """Writes contents to filename"""
    if filename == '-' and allow_stdout:
        sys.stdout.write(contents)
    else:
        with open(filename, mode) as fh:
            fh.write(contents)


def format_dict_recursively(
    mapping, raise_unresolvable=True, strip_unresolvable=False, conversions={'True': True,
                                                                             'False': False}
):
    """Format each string value of dictionary using values contained within
    itself, keeping track of dependencies as required.

    Also converts any formatted values according to conversions dict.

    Example:

    >>> c = dict(wat='wat{omg}', omg=True)
    >>> format_dict_recursively(c)
    {'omg': True, 'wat': 'watTrue'}

    Dealing with missing (unresolvable) keys in format strings:

    >>> c = dict(wat='wat{omg}', omg=True, fail='no{whale}')
    >>> format_dict_recursively(c)
    Traceback (most recent call last):
        ...
    ValueError: Impossible to format dict due to missing elements: {'fail': ['whale']}
    >>> format_dict_recursively(c, raise_unresolvable=False)
    {'fail': 'no{whale}', 'omg': True, 'wat': 'watTrue'}
    >>> format_dict_recursively(c, raise_unresolvable=False, strip_unresolvable=True)
    {'omg': True, 'wat': 'watTrue'}

    :param dict mapping: Dict.
    :param bool raise_unresolvable: Upon True, raises ValueError upon an unresolvable key.
    :param bool strip_unresolvable: Upon True, strips unresolvable keys.
    :param dict conversions: Mapping of {from: to}.
    """
    if conversions is None:
        conversions = {}

    ret = {}

    # Create dependency mapping
    deps = {}
    for k, v in mapping.items():
        # Do not include multiline values in this to avoid KeyErrors on actual
        # .format below
        if isinstance(v, six.string_types) and '\n' not in v:
            # Map key -> [*deps]
            # This is a bit naive, but it works well.
            deps[k] = re.findall(r'\{(\w+)\}', v)
        else:
            ret[k] = v

    while len(ret) != len(mapping):
        ret_key_count_at_start = len(ret)
        sret = set(ret)
        keys = set(mapping) - sret

        for k in keys:
            needed = (x not in ret for x in deps[k])
            if any(needed):
                continue

            ret[k] = mapping[k].format(**ret)

            if ret[k] in conversions:
                ret[k] = conversions[ret[k]]

        # We have done all that we can here.
        if ret_key_count_at_start == len(ret):
            if not raise_unresolvable:
                if not strip_unresolvable:
                    # backfill
                    ret.update({k: mapping[k] for k in keys})
                break

            missing = {k: [x for x in deps[k] if x not in ret]}
            raise ValueError('Impossible to format dict due to missing elements: %r' % missing)

    return ret


__PYGMENTS_STYLE = pygments.styles.get_style_by_name('monokai')
__PYGMENTS_FORMATTER = pygments.formatters.get_formatter_by_name('console16m', style=__PYGMENTS_STYLE)
__PYGMENTS_LEXER_PYTHON = pygments.lexers.get_lexer_by_name('python{}'.format(six.PY3 and '3' or ''))


def pf(arg, lexer=__PYGMENTS_LEXER_PYTHON, formatter=__PYGMENTS_FORMATTER):
    """Pretty formats with coloring.

    Works in iPython, but not bpython as it does not write directly to term
    and decodes it instead."""
    arg = pformat(arg)
    return pygments.highlight(arg, lexer, formatter)


def pp(arg, lexer=__PYGMENTS_LEXER_PYTHON, formatter=__PYGMENTS_FORMATTER, outfile='/dev/stdout'):
    """Pretty prints with coloring.

    Works in iPython, but not bpython as it does not write directly to term
    and decodes it instead."""
    arg = pformat(arg)
    try:
        if isinstance(outfile, six.string_types):
            close = True
            outfile = open(outfile, 'w')

        pygments.highlight(arg, lexer, formatter, outfile)
    finally:
        if close:
            outfile.close()
