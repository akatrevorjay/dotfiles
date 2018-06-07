autoload -U +X bashcompinit
bashcompinit

bash-source() {
  alias shopt=':'
  alias _expand=_bash_expand
  alias _complete=_bash_comp
  emulate -L sh
  setopt kshglob noshglob braceexpand

  source "$@"
}

# bashcomp emulation doesn't include f:_init_completion .
# This is a very minimal version of that function.
#function _init_completion() {
#    COMPREPLY=()
#    _get_comp_words_by_ref "$@" cur prev words cword
#}

## zshall(1): _bash_completions:
#
# This function is used by two widgets, _bash_complete-word and _bash_list-choices.  It exists to provide compatibility with completion bindings in bash.  The last character of the binding  deter‐
# mines  what  is completed: `!', command names; `$', environment variables; `@', host names; `/', file names; `~' user names.  In bash, the binding preceded by `\e' gives completion, and preceded
# by `^X' lists options.  As some of these bindings clash with standard zsh bindings, only `\e~' and `^X~' are bound by default.  To add the rest, the following should be  added  to  .zshrc  after
# compinit has been run:

if (( ${+functions[_bash_complete-word]} )); then
    for key in '!' '$' '@' '/' '~'; do
	bindkey "\e$key" _bash_complete-word
	bindkey "^X$key" _bash_list-choices
    done
fi

# This includes the bindings for `~' in case they were already bound to something else; the completion code does not override user bindings.
#
## zshall(1) _bash_completions$

