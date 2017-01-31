# these IPython extensions are written by Martin Teichmann
# Copyright (c) 2014 European XFEL GmbH
# Distributed under the terms of the Modified BSD License.

import sys
from asyncio import Future
from functools import partial

def load_ipython_extension(ip):
    class Hook(ip.displayhook_class):
        def __init__(self, *args, **kwargs):
            super().__init__(*args, **kwargs)
            self.delayed = [ ]

        def delayedprint(self, future):
            self.delayed.append((future.number, future.result()))

        def pre_prompt(self, ip):
            ec = self.shell.execution_count
            try:
                for num, result in self.delayed:
                    self.shell.execution_count = num
                    sys.displayhook(result)
                self.delayed = [ ]
            finally:
                self.shell.execution_count = ec

        def __call__(self, result=None):
            super().__call__(result)
            if isinstance(result, Future):
                result.number = self.shell.execution_count
                result.add_done_callback(self.delayedprint)

    ip.displayhook_class = Hook
    ip.init_displayhook()
    ip.set_hook("pre_prompt_hook", ip.displayhook.pre_prompt)
