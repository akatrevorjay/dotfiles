import logging

log = logging.getLogger(__name__)


def __ipyrc__():
    """IPython shell init"""


if __name__ == '__main__':
    if os.path.basename(sys.argv[0]).startswith('ipython'):
        __ipyrc__()
