#!/bin/zsh
# Set base history settings, ie extended to include timestamps, don't trample
setopt histignorealldups hist_ignore_space hist_append sharehistory extendedhistory
setopt histreduceblanks histlexwords inc_append_history_time

# Keep many lines of history within the shell and save it to $ZDOTDIR/.zsh_history:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=$LOCAL_ZDOTDIR/history/history.$SHORT_HOSTNAME
mkdir -pv ${HISTFILE:h}
