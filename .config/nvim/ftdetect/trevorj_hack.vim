
"" For now, all HTML files
"au BufRead,BufNewFile *.html set filetype=htmldjango

"" All pys
"au BufRead,BufNewFile *.py set filetype=python

"" Bash
"au BufRead,BufNewFile *.sh set filetype=sh

" DKMS
au BufRead,BufNewFile *.dkms setf sh
au BufRead,BufNewFile dkms.conf setf sh
au BufRead,BufNewFile *.dox setf doxygen
" Notice no extension, catches kops edit
au BufRead,BufNewFile *yaml setf yaml

"" Readmes
"au BufRead,BufNewFile readme* set filetype=markdown
"au BufRead,BufNewFile install* set filetype=markdown
"au BufRead,BufNewFile *.txt set filetype=markdown

if did_filetype()   " filetype already set
    finish
elseif getline(1) =~ '^#!/usr/bin/env python'
    setfiletype python
"elseif getline(1) =~ '^#!/bin/sh'
"    setfiletype sh
"elseif getline(1) =~ '^#!/bin/bash'
"    setfiletype sh
elseif getline(1) =~ '^#!/usr/bin/env sh'
    setfiletype sh
elseif getline(1) =~ '^#!/usr/bin/env bash'
    setfiletype sh
elseif getline(1) =~ '^#!/usr/bin/env zsh'
    setfiletype zsh
elseif getline(1) =~ '^['
    setfiletype dosini
"elseif getline(1) =~ '^<html'
"    setfiletype jinja
"elseif getline(1) =~ '^<doctype'
"    setfiletype jinja
endif

" vim: set ts=2 sw=2 tw=78 et noexpandtab:
