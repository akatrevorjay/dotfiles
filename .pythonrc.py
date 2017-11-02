import logging

log = logging.getLogger(__name__)

import collections
import six
import sys
import types
import os
import warnings
import pprint
import collections
import functools
import operator
import json
import yaml
import csv
import re

from pprint import pprint, pformat
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

if six.PY3:
    import asyncio

try:
    import pytutils
except ImportError:
    pass

__PYTUTILS_PATH = os.path.expanduser('~/.pytutils.py')

if os.path.exists(__PYTUTILS_PATH):
    try:
        with open(__PYTUTILS_PATH, 'r') as f:
            exec (f.read())
    except Exception:
        log.exception("Could not open pytutils at %r" % __PYTUTILS_PATH)

IS_IPYTHON = os.path.basename(sys.argv[0]).startswith('ipython')
IS_PYTHON = os.path.basename(sys.argv[0]).startswith('python')


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


def __ipyrc__():
    """IPython shell init"""


if __name__ == '__main__':
    if IS_IPYTHON:
        __ipyrc__()
    elif IS_PYTHON:
        __pyrc__()
