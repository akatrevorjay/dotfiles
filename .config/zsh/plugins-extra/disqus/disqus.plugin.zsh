export PDSH_SSH_ARGS_APPEND="-o StrictHostKeyChecking=no"
alias dsed='sed -e "s/disqus/i.disqus/"'
alias dsh='pdsh -R ssh -w -'
alias pps="helix -1 node list -b 'role:puppetmaster' | dsed | dsh 'cd /etc/puppet && sudo git pull'"
