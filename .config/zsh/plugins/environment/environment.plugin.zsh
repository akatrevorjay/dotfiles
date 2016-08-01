# Treat single word simple commands without redirection as candidates for resumption of an existing job.
setopt auto_resume

# List jobs in the long format by default. 
setopt long_list_jobs

# Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
setopt notify

# Run all background jobs at a lower priority. This option is set by default.
unsetopt bg_nice

# Send the HUP signal to running jobs when the shell exits.
unsetopt hup

# Report the status of background and suspended jobs before exiting a shell with job control; 
# a second attempt to exit the shell will succeed. 
# NO_CHECK_JOBS is best used only in combination with NO_HUP, else such jobs will be killed automatically
unsetopt check_jobs

# Function local by default
setopt local_{options,loops,patterns,traps}

# Perform implicit tees or cats when multiple redirections are attempted
setopt multios

# By default, when a pipeline exits the exit status recorded by the shell  and  returned  by  the  shell
# variable  $?  reflects  that  of the rightmost element of a pipeline.  If this option is set, the exit
# status instead reflects the status of the rightmost element of the pipeline that was non-zero, or zero
# if all elements exited with zero status.
setopt pipe_fail

