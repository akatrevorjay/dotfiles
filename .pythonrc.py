
import logging

logging.basicConfig(level=logging.DEBUG)

log = logging.getLogger(__file__)


import sys


# if sys.executable:

log.error('m=%s f=%s', __name__, __file__)

"""
History
"""

import atexit
import os
import readline
import rlcompleter

history = os.path.expanduser("~/.python_history")

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


"""
Jedi autocompletion
"""

readline.parse_and_bind('set editing-mode vi')

try:
    from jedi.utils import setup_readline
    setup_readline()
except ImportError:
    # Fallback to the stdlib readline completer if it is installed.
    # Taken from http://docs.python.org/2/library/rlcompleter.html
    log.error("Jedi is not installed, falling back to readline")
    try:
        import readline
        import rlcompleter
        readline.parse_and_bind("tab: complete")
    except ImportError:
        log.error("Readline is not installed either. No tab completion is enabled.")
"""
Utils
"""

# See is a replacement for dir meant for pyshells.
# Dir shows quite a bit of cruft,
# See shows too little.
try:
    from see import see
except ImportError:
    log.error("See not installed (or not importable).")

from pprint import pprint as pp
