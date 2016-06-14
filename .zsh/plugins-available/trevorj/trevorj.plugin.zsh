#!/bin/zsh
# Unsure
setopt autoresume autocd autoresume
setopt longlistjobs
#setopt globcomplete globsubst globassign
#setopt vi

setopt correct correctall

# aliases
alias v='vim'
alias vi='vim'
#alias -g V='| vless'

#
# ls aliases
#

alias ls="${(Q)${$(alias -m ls)#*=}:-ls --colors=auto} -Fuh -B"
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

#
# downloads
#

# order of preference: aria2c, axel, wget, curl. This order is derrived from speed based on personal tests.
if (( ${+commands[aria2c]} )); then
    alias get='aria2c --max-connection-per-server=5 --continue'
elif (( ${+commands[axel]} )); then
    alias get='axel --num-connections=5 --alternate'
elif (( ${+commands[wget]} )); then
    alias get='wget --continue --progress=bar --timestamping'
elif (( ${+commands[curl]} )); then
    alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'
fi

unsetopt flowcontrol

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

#
# Suffix aliases
#

for s (tex{,t} txt log m{,k}d xml json yaml rst jinja{,2} template tmpl dj{x,}htm{,l} sls zone {x,}htm{,l} cfg conf rc ini); do
	alias -s $s=vim
done

for s (net com org io); do
	alias -s $s=$BROWSER
done
