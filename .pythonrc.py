import logging

log = logging.getLogger(__name__)


def __pyrc__():
    """Python shell init"""

    logging.basicConfig(level=logging.DEBUG)

    def enable_history(history_file='~/.python_history'):
        """History."""

        import atexit
        import os
        import readline
        import rlcompleter

        history = os.path.expanduser(history_file)

        if os.path.exists(history):
            try:
                readline.read_history_file(history)
            except IOError:
                log.exception("Failed to read %r: %s" % history)

        readline.set_history_length(1024 * 9)

        def write_history(history):

            def wrapped():
                import readline
                readline.write_history_file(history)

            return wrapped

        atexit.register(write_history(history))

    def enable_completion():
        """
        Jedi autocompletion
        """

        import readline

        try:
            from jedi.utils import setup_readline
            setup_readline()
        except ImportError:
            # Fallback to the stdlib readline completer if it is installed.
            # Taken from http://docs.python.org/2/library/rlcompleter.html
            log.warn("Jedi is not installed, falling back to readline")
            try:
                import rlcompleter
                readline.parse_and_bind("tab: complete")
            except ImportError:
                log.error("Readline is not installed either. No tab completion is enabled.")

        readline.parse_and_bind('set editing-mode vi')

    enable_history()
    enable_completion()


if __name__ == '__main__':
    import os
    import sys
    from pprint import pprint as pp

    if os.path.basename(sys.argv[0]).startswith('python'):
        __pyrc__()

    # See is a replacement for dir meant for pyshells.
    # Dir shows quite a bit of cruft,
    # See shows too little.
    try:
        from see import see
    except ImportError:
        log.warn("See not importable: pip install see")

    import collections
    import functools
    import operator

    class multidict(collections.OrderedDict):
        _unique = 0

        def __setitem__(self, key, val):
            if isinstance(val, dict) and key in self:
                self._unique += 1
                key += str(self._unique)
            dict.__setitem__(self, key, val)
