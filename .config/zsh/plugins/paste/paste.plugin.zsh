# use smart URL pasting and escaping
autoload -Uz is-at-least
if [[ ${ZSH_VERSION} != 5.1.1 ]]; then
  if is-at-least 5.1; then
    autoload -Uz bracketed-paste-magic
    zle -N bracketed-paste bracketed-paste-magic
  fi
  autoload -Uz url-quote-magic
  zle -N self-insert url-quote-magic
fi

