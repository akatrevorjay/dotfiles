#!/bin/zsh
#
# Git aliases.
#

(( $+commands[git] )) || return 1

fpath+=(${0:h}/functions)

#load_funcs() {
#    local function_glob='^([_.]*|prompt_*_setup|README*)(-.N:t)'
#    local mod_function
#
#    # Add functions dir to fpath
#    fpath=(${0:h}/functions(/FN) ${fpath})
#
#    function {
#        setopt LOCAL_OPTIONS EXTENDED_GLOB
#        for mod_function in ${0:h}/functions/${~function_glob}; do
#            autoload -Uz ${mod_function}
#        done
#    }
#}

#
# Aliases
#

# $ wow
# $ such commit
# $ very push
alias much=git
alias such=git
alias very=git
alias so=git
alias wow='git st'

# git
alias g='git'
alias gi='git'

# shellisms
alias cdgroot='cd $(git-root || print .)'
alias g..=cdgroot

function -git-shorten-alias() {
	local subcmd=$0

	case $subcmd in
		g*) subcmd=${subcmd#g} ;;
	esac

	git $subcmd "$@"
}

# Branch (b)
for i (
	gb gbr
	gco gco-b gco-B
	gl gll glog
	glp gllp glogp
	gg gg1 gg2
	ghist
	gpush
	gf gfetch
	gpull
); do
	alias $i="git ${i#g}"
done

# alias gpc='git push --set-upstream origin "$(git-branch-current)"'
# alias gpp='git pull origin "$(git-branch-current)" && git push origin "$(git-branch-current)"'

