
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
        print("Failed to read %r: %s" % (history, e))

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
    print("Jedi is not installed, falling back to readline")
    try:
        import readline
        import rlcompleter
        readline.parse_and_bind("tab: complete")
    except ImportError:
        print("Readline is not installed either. No tab completion is enabled.")

"""
Utils
"""

# See is a replacement for dir meant for pyshells.
# Dir shows quite a bit of cruft,
# See shows too little.
try:
    from see import see
except ImportError:
    print("See not installed.")
