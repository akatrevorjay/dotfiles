#!/bin/zsh

# if it's a dumb terminal, return.
if [[ ${TERM} == 'dumb' ]]; then
	return
fi
[[ $- =~ i ]] || return

# Treat single word simple commands without redirection as candidates for resumption of an existing job.
setopt auto_resume

# List jobs in the long format by default. 
setopt long_list_jobs

# Yes, we want to be able to comment in interactive mode
setopt interactive_comments

# Job control, uh yeah
setopt monitor 2>/dev/null || :
#setopt posixjobs

# Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
setopt notify

# Run all background jobs at a lower priority. This option is set by default.
setopt no_bg_nice

# Send the HUP signal to running jobs when the shell exits.
setopt no_hup

# Report the status of background and suspended jobs before exiting a shell with job control; 
# a second attempt to exit the shell will succeed. 
# NO_CHECK_JOBS is best used only in combination with NO_HUP, else such jobs will be killed automatically
setopt no_check_jobs

# Perform implicit tees or cats when multiple redirections are attempted
setopt multios

# By default, when a pipeline exits the exit status recorded by the shell  and  returned  by  the  shell
# variable  $?  reflects  that  of the rightmost element of a pipeline.  If this option is set, the exit
# status instead reflects the status of the rightmost element of the pipeline that was non-zero, or zero
# if all elements exited with zero status.
setopt pipe_fail

# Auto add chpwds to thj dirstack
setopt auto_pushd

setopt auto_cd cdable_vars pushd_to_home pushd_minus pushd_ignore_dups
#export DIRSTAC

setopt list_packed list_rows_first list_types

#setopt auto_param_slash
#setopt auto_param_keys

setopt no_global_export
setopt flow_control

setopt path_script

setopt c_bases
setopt c_precedences

setopt eval_lineno
setopt multios
#setopt source_trace
setopt ksh_option_print

#setopt over_strike
setopt combining_chars
setopt traps_async

setopt extended_glob
setopt ksh_glob

setopt glob_star_short
setopt brace_expand
setopt brace_ccl
setopt rc_expand_param

#setopt nomatch
setopt no_null_glob

setopt complete_in_word

setopt hash_list_all

# Function local by default
#setopt local_{options,loops,patterns,traps}

