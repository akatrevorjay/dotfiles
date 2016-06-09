# Inpired by code found on exit signal hook on the zsh-prompt-powerline project
# see  https://github.com/Valodim/zsh-prompt-powerline/blob/master/hooks/prompt-exitnames.zsh
#
# This function replaces the exit status number with its associated signal name
# name. We can't know for sure if these return codes are actually caused by the
# signals, but usually they are, since few programs output exit codes > 128 for
# error conditions.
# If no matching codes then output code.


nice_exit_code() {
	local exit_status="${1:-$(print -P %?)}";
	# nothing to do here
	[[ -z $exit_status || $exit_status == 0 ]] && return;

	local sig_name;
	
	# is this a signal name (error code = signal + 128) ?
	case $exit_status in
		129)  sig_name=HUP ;;
		130)  sig_name=INT ;;
		131)  sig_name=QUIT ;;
		132)  sig_name=ILL ;;
		134)  sig_name=ABRT ;;
		136)  sig_name=FPE ;;
		137)  sig_name=KILL ;;
		139)  sig_name=SEGV ;;
		141)  sig_name=PIPE ;;
		143)  sig_name=TERM ;;
	esac

	# usual exit codes
	case $exit_status in
		-1)   sig_name=FATAL ;;
		1)    sig_name=WARN ;; # Miscellaneous errors, such as "divide by zero"
		2)    sig_name=BUILTINMISUSE ;; # misuse of shell builtins (pretty rare)
		126)  sig_name=CCANNOTINVOKE ;; # cannot invoke requested command (ex : source script_with_syntax_error)
		127)  sig_name=CNOTFOUND ;; # command not found (ex : source script_not_existing)
	esac

	# assuming we are on an x86 system here
	# this MIGHT get annoying since those are in a range of exit codes
	# programs sometimes use.... we'll see.
	case $exit_status in
		19)  sig_name=STOP ;;
		20)  sig_name=TSTP ;;
		21)  sig_name=TTIN ;;
		22)  sig_name=TTOU ;;
	esac

	echo "$ZSH_PROMPT_EXIT_SIGNAL_PREFIX${exit_status}:${sig_name:-$exit_status}$ZSH_PROMPT_EXIT_SIGNAL_SUFFIX";
}