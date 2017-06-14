#!/bin/zsh

setopt nocorrectall
setopt correct

#setopt globcomplete globsubst globassign

#unsetopt flowcontrol

# If a completion is performed with the cursor within a word, and a full completion is inserted,
# the cursor is moved to the end of the word
setopt always_to_end

# Automatically use menu completion after the second consecutive request for completion
setopt auto_menu

# Automatically list choices on an ambiguous completion.
setopt auto_list

# Perform a path search even on command names with slashes in them.
setopt path_dirs

# Make globbing (filename generation) sensitive to case.
unsetopt case_glob

## On an ambiguous completion, instead of listing possibilities or beeping, insert the first match immediately.
## Then when completion is requested again, remove the first match and insert the second match, etc.
## iow do not autoselect the first completion entry
#unsetopt menu_complete

# aliases
alias v='vim'
alias vi='vim'
#alias -g V='| vless'

#
# ls aliases
#

alias l='ls'
alias la='ls -A'
alias lA='ls -a'
alias ll='ls -l'
alias lg='ls -g'
alias lla='ll -A'
alias llA='ls -la'

alias l='ls -lAh'         # all files,
alias lm="l | ${PAGER}"   # all files, use pager
alias lr='ll -R'          # recursive
alias lx='ll -XB'         # sort by extension (GNU only)
alias lk='ll -Sr'         # largest last
alias lt='ll -tr'         # most recent last
alias lc='lt -c'          # most recent last, change time

# pager
alias -g P="| $PAGER"

#
# duh
#

alias dfh='df -kh'
alias duh='du -kh'
alias df=dfh
alias du=duh

# Mac OS X Everywhere
case $OSTYPE:l in
	darwin*) ;;
	cygwin*) alias open='cygstart' ;;
	*)       alias open='xdg-open' ;;
esac

#
# Suffix aliases
#

for s (t{ex{,t},xt} txt log m{,k}d xml json yaml rst jinja{,2} template tmpl dj{x,}htm{,l} sls zone {x,}htm{,l} cfg conf rc ini c{,pp} h pm css sass less); do
	alias -s $s=$EDITOR
done

for s (net com org io in tv); do
	alias -s $s=${BROWSER:-open}
done

for s (mp4 avi mov mpeg mp3 ogg jpg png gif webp ico pdf epub dvi dmg iso); do
    alias -s $s=open
done

for s (gz bz2 lz xz lzma zip tar rar cpio 7z zip); do
    alias -s $s=dtrx
done

