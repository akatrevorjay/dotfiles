#!/bin/zsh
if (( ! $+functions[prompt] )); then
    autoload -Uz promptinit
    promptinit
fi

case $0:t in
    prompt.zsh|${${0:A}:t}) ;;
    *)
        prompt ${${0:t}%.zsh}
    ;;
esac

