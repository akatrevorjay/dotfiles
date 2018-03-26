#!/bin/zsh
#
# Editor and input char assignment
#

# Return if requirements are not found.
if [[ ${TERM} == 'dumb' ]]; then
	return 1
fi

# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Builtins
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets

# Make sure that the terminal is in application mode when zle is active, since
# only then values from $keyinfo are valid
if (( ${+keyinfo[smkx]} )) && (( ${+keyinfo[rmkx]} )); then
	function zle-line-init() {
		echoti smkx
	}
	function zle-line-finish() {
		echoti rmkx
	}
	zle -N zle-line-init
	zle -N zle-line-finish
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

# Enable zle binds
#unsetopt multibyte
#bindkey -m >/dev/null 2>&1

# Use human-friendly identifiers.
zmodload zsh/terminfo
typeset -gA keyinfo
keyinfo=(
'Control'	   '\C-'
'ControlLeft'  '\e[1;5D \e[5D \e\e[D \eOd \eOD'
'ControlRight' '\e[1;5C \e[5C \e\e[C \eOc \eOC'
'Escape'	   '\e'
'Meta'		   '\M-'
'Backspace'    "^?"
'Delete'	   "^[[3~"
'F1'		   "${terminfo[kf1]}"
'F2'		   "${terminfo[kf2]}"
'F3'		   "${terminfo[kf3]}"
'F4'		   "${terminfo[kf4]}"
'F5'		   "${terminfo[kf5]}"
'F6'		   "${terminfo[kf6]}"
'F7'		   "${terminfo[kf7]}"
'F8'		   "${terminfo[kf8]}"
'F9'		   "${terminfo[kf9]}"
'F10'		   "${terminfo[kf10]}"
'F11'		   "${terminfo[kf11]}"
'F12'		   "${terminfo[kf12]}"
'Insert'	   "${terminfo[kich1]}"
'Home'		   "${terminfo[khome]}"
'PageUp'	   "${terminfo[kpp]}"
'End'		   "${terminfo[kend]}"
'PageDown'	   "${terminfo[knp]}"
'Up'		   "${terminfo[kcuu1]}"
'Left'		   "${terminfo[kcub1]}"
'Down'		   "${terminfo[kcud1]}"
'Right'		   "${terminfo[kcuf1]}"
'BackTab'	   "${terminfo[kcbt]}"

"${(kv)terminfo[@]}"
)

function zplugins::input::has-key() { [[ -n ${keyinfo[$1]} ]]; }

## Updates editor information when the keymap changes.
#function zle-keymap-select() {
#  zle reset-prompt
#  zle -R
#}
#zle -N zle-keymap-select

## Ensure that the prompt is redrawn when the terminal size changes.
#TRAPWINCH() {
#  zle && { zle reset-prompt; zle -R }
#}

##
## binds: emacs mode
##

bindkey -e											  # Use emacs key bindings

##
## binds: vi mode
##

#bindkey -v

## allow v to edit the command line (standard behaviour)
#bindkey '^F' edit-command-line

## allow ctrl-p, ctrl-n for navigate history (standard behaviour)
#bindkey '^P' up-history
#bindkey '^N' down-history

## Bind CTRL+k and CTRL+j to substring search
#bindkey '^j' history-substring-search-up
#bindkey '^k' history-substring-search-down

## allow ctrl-h, ctrl-w, ctrl-? for char and word deletion (standard behaviour)
#bindkey '^?' backward-delete-char
#bindkey '^h' backward-delete-char
#bindkey '^w' backward-kill-word

#if [[ ${#fg} -eq 0 ]]; then
#	 autoload -Uz colors
#	 colors
#fi

## if mode indicator wasn't setup by theme, define default
#: ${MODE_INDICATOR:="%{$fg_bold[red]%}<%{$fg[red]%}<<%{$reset_color%}"}

#function vi_mode_prompt_info() {
#	 echo "${${KEYMAP/vicmd/$MODE_INDICATOR}/(main|viins)/}"
#}

## define right prompt, if it wasn't defined by a theme
#if [[ -z "${RPS1}${RPROMPT}" ]]; then
#  RPS1='$(vi_mode_prompt_info)'
#fi

#function zle-line-init zle-keymap-select {
#	 #RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#	 RPS1=$(vi_mode_prompt_info)
#	 zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select

##
## binds
##

bindkey '\ew' kill-region							  # [Esc-w] - Kill from the cursor to the mark
bindkey -s '\el' 'ls\n'								  # [Esc-l] - run command: ls
#bindkey '^r' history-incremental-search-backward	   # [Ctrl-r] - Search backward incrementally for a specified string. The string may begin with ^ to anchor the search to the beginning of the line.
if [[ -n "${keyinfo[kpp]}" ]]; then
	bindkey "${keyinfo[kpp]}" up-line-or-history	   # [PageUp] - Up a line of history
fi
if [[ -n "${keyinfo[knp]}" ]]; then
	bindkey "${keyinfo[knp]}" down-line-or-history	   # [PageDown] - Down a line of history
fi

# start typing + [Up-Arrow] - fuzzy find history forward
if [[ -n "${keyinfo[kcuu1]}" ]]; then
	autoload -U up-line-or-beginning-search
	zle -N up-line-or-beginning-search
	bindkey "${keyinfo[kcuu1]}" up-line-or-beginning-search
fi
# start typing + [Down-Arrow] - fuzzy find history backward
if [[ -n "${keyinfo[kcud1]}" ]]; then
	autoload -U down-line-or-beginning-search
	zle -N down-line-or-beginning-search
	bindkey "${keyinfo[kcud1]}" down-line-or-beginning-search
fi

if [[ -n "${keyinfo[khome]}" ]]; then
	bindkey "${keyinfo[khome]}" beginning-of-line	   # [Home] - Go to beginning of line
fi
if [[ -n "${keyinfo[kend]}" ]]; then
	bindkey "${keyinfo[kend]}"	end-of-line			   # [End] - Go to end of line
fi

bindkey ' ' magic-space								  # [Space] - do history expansion

bindkey '^[[1;5C' forward-word						  # [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5D' backward-word						  # [Ctrl-LeftArrow] - move backward one word

if [[ -n "${keyinfo[kcbt]}" ]]; then
	bindkey "${keyinfo[kcbt]}" reverse-menu-complete   # [Shift-Tab] - move through the completion menu backwards
fi

bindkey '^?' backward-delete-char					  # [Backspace] - delete backward
if [[ -n "${keyinfo[kdch1]}" ]]; then
	bindkey "${keyinfo[kdch1]}" delete-char			   # [Delete] - delete forward
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

if [[ -n ${keyinfo[Insert]} ]]; then
	bindkey ${keyinfo[Insert]} overwrite-mode
fi

#bindkey ${keyinfo[Left]} backward-char
#bindkey ${keyinfo[Right]} forward-char

# Clear
#bindkey "${keyinfo[Control]}L" clear-screen

bindkey -s '\el' 'ls\n'								  # [Esc-l] - ls
bindkey -s '\et' 'tree -C\n'						  # [Esc-t] - directory tree

#bindkey '^[[A' up-line-or-search
#bindkey '^[[B' down-line-or-search
#bindkey '^[^[[C' emacs-forward-word
#bindkey '^[^[[D' emacs-backward-word

#bindkey -s '^X^Z' '%-^M'
#bindkey '^[e' expand-cmd-path
#bindkey '^[^I' reverse-menu-complete
#bindkey '^X^N' accept-and-infer-next-history
#bindkey '^I' complete-word

## Fix weird sequence that rxvt produces
#bindkey -s '^[[Z' '\t'

## History completion
#autoload history-search-end
#zle -N history-beginning-search-backward-end history-search-end
#zle -N history-beginning-search-forward-end history-search-end
## set options
#HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=magenta,fg=white,bold'
#HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=red,fg=white,bold'
#HISTORY_SUBSTRING_SEARCH_GLOBBING_FLAGS='i'
## bind normal
#bindkey "^p" history-beginning-search-backward-end
#bindkey "^n" history-beginning-search-forward-end
## bind P and N for EMACS mode
#bindkey -M emacs '^P' history-substring-search-up
#bindkey -M emacs '^N' history-substring-search-down
## bind k and j for VI mode
#bindkey -M vicmd 'k' history-substring-search-up
#bindkey -M vicmd 'j' history-substring-search-down

## Like bash
#bindkey "^u" backward-kill-line

## ^Xa to insert all matches
#zle -C all-matches complete-word _generic
#bindkey '^Xa' all-matches
#zstyle ':completion:all-matches:*' old-matches only
#zstyle ':completion:all-matches..' completer _all_matches
