#!/bin/zsh
#
# Editor and input char assignment
#

# Return if requirements are not found.
if [[ ${TERM} == 'dumb' ]]; then
    return 1
fi

## Load zkbd file if one exists
f="~/.zkbd/$TERM-${${DISPLAY:t}:-$VENDOR-$OSTYPE}"
if [[ -e "$f" ]]; then
    source "$f" 2>&1 >/dev/null
    #[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
    #[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char
    # etc.
fi
unset f

##
## Enable meta/alt keys
##

unsetopt multibyte

# Enable zle binds
bindkey -m >/dev/null 2>&1

# Use human-friendly identifiers.
zmodload zsh/terminfo
typeset -gA key_info
key_info=(
	'Control'      '\C-'
	'ControlLeft'  '\e[1;5D \e[5D \e\e[D \eOd \eOD'
	'ControlRight' '\e[1;5C \e[5C \e\e[C \eOc \eOC'
	'Escape'       '\e'
	'Meta'         '\M-'
	'Backspace'    "^?"
	'Delete'       "^[[3~"
	'F1'           "${terminfo[kf1]}"
	'F2'           "${terminfo[kf2]}"
	'F3'           "${terminfo[kf3]}"
	'F4'           "${terminfo[kf4]}"
	'F5'           "${terminfo[kf5]}"
	'F6'           "${terminfo[kf6]}"
	'F7'           "${terminfo[kf7]}"
	'F8'           "${terminfo[kf8]}"
	'F9'           "${terminfo[kf9]}"
	'F10'          "${terminfo[kf10]}"
	'F11'          "${terminfo[kf11]}"
	'F12'          "${terminfo[kf12]}"
	'Insert'       "${terminfo[kich1]}"
	'Home'         "${terminfo[khome]}"
	'PageUp'       "${terminfo[kpp]}"
	'End'          "${terminfo[kend]}"
	'PageDown'     "${terminfo[knp]}"
	'Up'           "${terminfo[kcuu1]}"
	'Left'         "${terminfo[kcub1]}"
	'Down'         "${terminfo[kcud1]}"
	'Right'        "${terminfo[kcuf1]}"
	'BackTab'      "${terminfo[kcbt]}"
)

# Bind the keys

local key
for key in "${(s: :)key_info[ControlLeft]}"; do
    bindkey ${key} backward-word
done
for key in "${(s: :)key_info[ControlRight]}"; do
    bindkey ${key} forward-word
done

if [[ -n "${key_info[Home]}" ]]; then
    bindkey "${key_info[Home]}" beginning-of-line
fi

if [[ -n "${key_info[End]}" ]]; then
    bindkey "${key_info[End]}" end-of-line
fi

if [[ -n "${key_info[Insert]}" ]]; then
    bindkey "${key_info[Insert]}" overwrite-mode
fi

bindkey "${key_info[Delete]}" delete-char
bindkey "${key_info[Backspace]}" backward-delete-char

bindkey "${key_info[Left]}" backward-char
bindkey "${key_info[Right]}" forward-char

# Expandpace.
#bindkey ' ' magic-space

# Clear 
bindkey "${key_info[Control]}L" clear-screen

# Bind Shift + Tab to go to the previous menu item.
if [[ -n "${key_info[BackTab]}" ]]; then
    bindkey "${key_info[BackTab]}" reverse-menu-complete
fi

# Make sure that the terminal is in application mode when zle is active, since
# only then values from $terminfo are valid
# Put into application mode and validate ${terminfo}
zle-line-init() {
    if (( ${+terminfo[smkx]} )); then
        echoti smkx
    fi
}
zle-line-finish() {
    if (( ${+terminfo[rmkx]} )); then
        echoti rmkx
    fi
}
zle -N zle-line-init
zle -N zle-line-finish

#bindkey -e                                            # Use emacs key bindings

bindkey '\ew' kill-region                             # [Esc-w] - Kill from the cursor to the mark
bindkey -s '\el' 'ls\n'                               # [Esc-l] - run command: ls
#bindkey '^r' history-incremental-search-backward      # [Ctrl-r] - Search backward incrementally for a specified string. The string may begin with ^ to anchor the search to the beginning of the line.
if [[ "$keyinfo[PageUp]" != "" ]]; then
  	bindkey "$keyinfo[PageUp]" up-line-or-history       # [PageUp] - Up a line of history
fi
if [[ "$keyinfo[PageDown]" != "" ]]; then
  	bindkey "$keyinfo[PageDown]" down-line-or-history     # [PageDown] - Down a line of history
fi

## start typing + [Up-Arrow] - fuzzy find history forward
#if [[ "$keyinfo[Up]" != "" ]]; then
#  	autoload -U up-line-or-beginning-search
#  	zle -N up-line-or-beginning-search
#  	bindkey "$keyinfo[Up]" up-line-or-beginning-search
#fi
## start typing + [Down-Arrow] - fuzzy find history backward
#if [[ "$keyinfo[Down]" != "" ]]; then
#  	autoload -U down-line-or-beginning-search
#  	zle -N down-line-or-beginning-search
#  	bindkey "$keyinfo[Down]" down-line-or-beginning-search
#fi

# set options
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=magenta,fg=white,bold'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=red,fg=white,bold'
HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='i'

## bind UP and DOWN arrow keys
#bindkey "$keyinfo[Up]" history-substring-search-up
#bindkey "$keyinfo[Down]" history-substring-search-down
#
## bind UP and DOWN arrow keys (compatibility fallback
## for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down
#
## bind P and N for EMACS mode
#bindkey -M emacs '^P' history-substring-search-up
#bindkey -M emacs '^N' history-substring-search-down
#
## bind k and j for VI mode
#bindkey -M vicmd 'k' history-substring-search-up
#bindkey -M vicmd 'j' history-substring-search-down

if [[ "$keyinfo[Home]" != "" ]]; then
  	bindkey "$keyinfo[Home]" beginning-of-line      # [Home] - Go to beginning of line
fi
if [[ "$keyinfo[End]" != "" ]]; then
  	bindkey "$keyinfo[End]"  end-of-line            # [End] - Go to end of line
fi

bindkey ' ' magic-space                               # [Space] - do history expansion

bindkey '^[[1;5C' forward-word                        # [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5D' backward-word                       # [Ctrl-LeftArrow] - move backward one word

if [[ "$keyinfo[BackTab]" != "" ]]; then
  	bindkey "$keyinfo[BackTab]" reverse-menu-complete   # [Shift-Tab] - move through the completion menu backwards
fi

bindkey '^?' backward-delete-char                     # [Backspace] - delete backward
if [[ "$keyinfo[Delete]" != "" ]]; then
  	bindkey "$keyinfo[Delete]" delete-char            # [Delete] - delete forward
else
  	bindkey "^[[3~" delete-char
  	bindkey "^[3;5~" delete-char
  	bindkey "\e[3~" delete-char
fi

# Edit the current command line in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# file rename magick
bindkey "^[m" copy-prev-shell-word

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search
bindkey '^[^[[C' emacs-forward-word
bindkey '^[^[[D' emacs-backward-word

bindkey -s '^X^Z' '%-^M'
bindkey '^[e' expand-cmd-path
bindkey '^[^I' reverse-menu-complete
bindkey '^X^N' accept-and-infer-next-history
bindkey '^W' kill-region
bindkey '^I' complete-word
## Fix weird sequence that rxvt produces
#bindkey -s '^[[Z' '\t'

# History completion
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# Like bash
bindkey "^u" backward-kill-line


