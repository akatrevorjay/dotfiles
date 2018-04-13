#!/bin/zsh

setopt hist_fcntl_lock
setopt extended_history
setopt bang_hist

# Whenever the user enters a line with history expansion, don't execute the line directly; instead, perform history expansion and reload the line into the editing buffer.
setopt hist_verify

# This option both imports new commands from the history file, and also causes your typed commands to be appended to the history file (the latter is like specifying INC_APPEND_HISTORY,
# which should be turned off if this option is in effect).  The history lines are also output with timestamps ala EXTENDED_HISTORY (which makes it easier to find the spot where we left
# off reading the file after it gets re-written).
setopt share_history

setopt hist_lex_words
setopt hist_reduce_blanks
setopt hist_ignore_space

setopt hist_expire_dups_first
#setopt hist_ignore_all_dups
# hist_save_no_dups
# hist_find_no_dups

# Keep many lines of history within the shell and save it to $ZDOTDIR/.zsh_history:
HISTSIZE=75000
# This should be slightly less than HISTSIZE to give some room for hist_expire_dups_first for the duplicated events,
# otherwise the option will act like hist_ignore_all_dups instead.
declare -i SAVEHIST=$(( $HISTSIZE * 0.9 ))

HISTFILE=$LOCAL_ZDOTDIR/history/history.$SHORT_HOSTNAME
mkdir -pv ${HISTFILE:h}
