
# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Maybe
setopt completeinword completealiases

# Unsure
setopt autoresume autocd autoresume
setopt longlistjobs
#setopt histreduceblanks histlexwords
#setopt globcomplete globsubst globassign
setopt correct correctall
#setopt vi

# Def
setopt extendedglob kshglob
setopt interactivecomments

# Set base history settings, ie extended to include timestamps, don't trample
setopt histignorealldups sharehistory incappendhistorytime extendedhistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
#compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' extra-verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -o pid,%cpu,tty,cputime,cmd'

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Golang
export GOPATH="$HOME/go"

# dedupe
typeset -U path fpath manpath infopath

# Set path
path=(
	# User home bin
	"$HOME/bin"
	"$HOME/.local/bin"

	"$GOPATH/bin"

	"$HOME/miniconda3/bin"

	"${path[@]}"
)

fpath=(
	"$HOME/.zsh/functions"
	"$HOME/.zsh/completions"

	"$HOME/.local/zsh/functions"
	"$HOME/.local/zsh/completions"

	"${fpath[@]}"
)

# personal
EDITOR=vim

# agen
ZGEN_RESET_ON_CHANGE=($HOME/.zshrc{,.local})
source "$HOME/.zgen/zgen.zsh"

# plugin conf
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)

# if the init scipt doesn't exist
if ! zgen saved; then
  zgen oh-my-zsh
  #zgen oh-my-zsh plugins/git

  #zgen prezto

  zgen load zsh-users/zsh-completions
  zgen load zsh-users/zsh-history-substring-search
  zgen load zsh-users/zsh-syntax-highlighting

  # generate the init script from plugins above
  zgen save
fi

# autoloads
autoload -Uz before after throw catch relative cdr sticky-note surround zcalc{,-auto-insert} which-command zcompdump zargs zed zed-set-file-name zfanon zfautocheck zfcd zfcd_match zfcget xtermctl
autoload -Uz allopt age checkmail chpwd_recent_{add,dirs,filehandler} calendar{,_{add,edit,lockfiles,parse,read,scandate,show,showdate,sort}}

autoload -Uz run-help{,-{git,ip,openssl,p4,sudo,svk,svn}}

autoload -Uz backward-kill-word-match backward-word-match bracketed-paste-url-magic capitalize-word-match copy-earlier-word quote-and-complete-word read-from-minibuffer regexp-replace replace-argument replace-string replace-string-again select-bracketed select-quoted select-word-style send-invisible smart-insert-last-word split-shell-arguments

# bash comp
autoload -Uz bashcompinit
bashcompinit

# Set up the prompt
autoload -Uz promptinit
promptinit
prompt walters

# Hub
eval "$(hub alias -s)"

# Google Cloud SDK
function () {
	local app_path="$1"
	source "$app_path/path.zsh.inc"
	source "$app_path/completion.zsh.inc"
} "$HOME/.local/google-cloud-sdk"

# fasd
function () {
	local fasd_cache="$HOME/.fasd-init-zsh"
	if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
		fasd --init \
		  posix-alias \
		  zsh-hook \
		  zsh-ccomp zsh-ccomp-install \
		  zsh-wcomp zsh-wcomp-install \
		  >| "$fasd_cache"
	fi
	source "$fasd_cache"

	alias v="f -e $EDITOR"
	alias o='a -e open_command'
}

# aliases
alias vim='nvim'
alias v='vim'
alias vi='vim'

alias grep='grep --color=auto'
alias -g G='| grep'
alias ls='ls --color=auto -Fuh -B -G'
alias l='ls'
alias la='ls -A'
alias ll='ls -l'
alias lg='ls -g'
alias lla='ll -A'

# This is annoying to have earlier.
setopt warncreateglobal
