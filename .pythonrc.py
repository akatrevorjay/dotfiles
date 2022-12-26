import collections
import csv
import functools
import json
import logging
import operator
import os
import pprint
import re
import sys
import types
import warnings
from pprint import pformat, pprint

try:
    from pathlib import Path
except ImportError:
    pass

try:
    import yaml
except ImportError:
    pass

log = logging.getLogger(__name__)

# from pytutils.lazy.lazy_import import lazy_import
# import pytutils.lazy.lazy_regex
# pytutils.lazy.lazy_regex.install_lazy_compile()

# import demandimport
# demandimport.enable()

try:
    import phi.api
    from phi.api import *
except ImportError:
    pass

try:
    import pout
except ImportError:
    pass

try:
    import icecream
    from icecream import ic
except ImportError:
    pass


try:
    import prettyprinter
    from prettyprinter import pprint, register_pretty, pretty_call
except ImportError:
    pass
pp2 = pprint
pf2 = pformat

# See is a replacement for dir meant for pyshells.
# Dir shows quite a bit of cruft,
# See shows too little.
try:
    from see import see
except ImportError:
    log.warn("See not importable: pip install see")

try:
    import sh
except ImportError:
    pass

try:
    import pysanity
except ImportError:
    pass

try:
    import six

    if six.PY3:
        import asyncio
except ImportError:
    pass

try:
    import pytutils

    import pytutils.log

    from pytutils.files import *
    from pytutils.iters import *
    from pytutils.lazy import *
    from pytutils.mappings import *
    from pytutils.pretty import *
    from pytutils.memo import *
    from pytutils.meth import *
    from pytutils.props import *
    from pytutils.python import *
    from pytutils.rand import *
    from pytutils.sets import *
    from pytutils.sys import *
    from pytutils.urls import *
    from pytutils.trees import *

    from pytutils.pythree import *
except ImportError:
    pass


def is_ipython():
    base = os.path.basename(sys.argv[0])
    print(base)

    ret = any([base.startswith(prefix) for prefix in ['ipython', 'jupyter', 'ipy', 'jupy']])

    return ret


def is_python():
    base = os.path.basename(sys.argv[0])

    ret = any([base.startswith(prefix) for prefix in ['python']])

    return ret


LOGGING_CONFIG = dict(
    version=1,
    disable_existing_loggers=False,
    formatters={
        'colored': {
            '()': 'colorlog.ColoredFormatter',
            'format':
                '%(bg_black)s%(log_color)s'
                '[%(asctime)s] '
                '[%(name)s/%(process)d] '
                '%(message)s '
                '%(blue)s@%(funcName)s:%(lineno)d '
                '#%(levelname)s'
                '%(reset)s',
            'datefmt': '%H:%M:%S',
        },
        'simple': {
            # format=' '.join(
            #     [
            #         '%(asctime)s|',
            #         '%(name)s/%(processName)s[%(process)d]-%(threadName)s[%(thread)d]:'
            #         '%(message)s @%(funcName)s:%(lineno)d #%(levelname)s',
            #     ]
            # ),
            'format':
                '%(asctime)s| %(name)s/%(processName)s[%(process)d]-%(threadName)s[%(thread)d]: '
                '%(message)s @%(funcName)s:%(lineno)d #%(levelname)s',
            'datefmt': '%Y-%m-%d %H:%M:%S',
        },
    },
    handlers={
        'console': {
            'class': 'logging.StreamHandler',
            'formatter': 'colored',
            'level': logging.DEBUG,
        },
    },
    root=dict(handlers=['console'], level=logging.DEBUG),
    loggers={
        'requests': dict(level=logging.INFO),

        # ipython completion
        'parso': dict(level=logging.INFO),
        'importmagic': dict(level=logging.INFO),
    },
)

IS_PYTHON = is_python()
IS_IPYTHON = not IS_PYTHON


def __anyrc__():
    # logging.basicConfig(level=logging.DEBUG)
    pytutils.log.configure(LOGGING_CONFIG)


def __pyrc__():
    """Python shell init"""

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

        readline.set_history_length(1024*9)

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


def __ipyrc__():
    """IPython shell init"""


if __name__ == '__main__':
    if IS_IPYTHON:
        __ipyrc__()
    elif IS_PYTHON:
        __pyrc__()
