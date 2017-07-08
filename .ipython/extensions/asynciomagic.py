# -*- coding: utf-8 -*-

import ast
from ast import (
    Call,
    Attribute,
    Name,
    Load,
)
import asyncio as _asyncio

from IPython.core.magic import (
    Magics,
    magics_class,
    cell_magic,
    line_magic,
)
from IPython.utils.text import indent


class RewriteAwait(ast.NodeTransformer):
    def visit_Await(self, node):
        self.generic_visit(node)

        new = Call(
            func=Attribute(
                value=Call(
                    func=Attribute(
                        value=Name(
                            id='_asyncio',
                            ctx=Load()
                        ),
                        attr='get_event_loop',
                        ctx=Load()),
                    args=[],
                    keywords=[]
                ),
                attr='run_until_complete',
                ctx=Load()
            ),
            args=[node.value],
            keywords=[]
        )

        return ast.copy_location(new, node)

    def visit_AsyncFunctionDef(self, node):
        # Don't transform awaits inside an 'async def' function
        return node

    def visit_Return(self, node):
        raise SyntaxError('Return outside function definition')


@magics_class
class AsyncIOMagics(Magics):
    @line_magic
    def await_(self, line):
        expr = 'async def __f(): await {line}'.format(line=indent(line))

        self._exec(expr)

    @cell_magic
    def async_(self, line, cell):
        expr = 'async def __f():\n{cell}'.format(cell=indent(cell))

        self._exec(expr)

    def _exec(self, expr):
        expr = ast.parse(expr)
        expr = expr.body[0].body

        nodes = [RewriteAwait().visit(node) for node in expr]
        module = ast.Module(nodes)
        ast.fix_missing_locations(module)

        coro = compile(module, filename='<asynciomagic>', mode='exec')

        self.shell.ex(coro)


def load_ipython_extension(ipython):
    ipython.user_global_ns['_asyncio'] = _asyncio
    ipython.register_magics(AsyncIOMagics)


def unload_ipython_extension(ipython):
    ipython.user_global_ns.pop('_asyncio', None)
