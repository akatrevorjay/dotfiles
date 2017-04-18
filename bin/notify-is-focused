#!/bin/bash

set -eu

if [ -n "${DEBUG-}" ] ; then
    set -x
else
    exec 2>/dev/null 1>/dev/null
fi

NOTIFY_TITLE=${NOTIFY_TITLE-}
test -n "${NOTIFY_TITLE}"
focused_window=$(xdotool getwindowfocus)
focused_title=$(xdotool getwindowname $focused_window)
echo $focused_title | grep -q "${NOTIFY_TITLE}"
echo OK
