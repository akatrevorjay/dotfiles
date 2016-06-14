#!/bin/zsh

autoload -Uz \
	before after throw catch relative cdr sticky-note surround zcalc{,-auto-insert} which-command zcompdump zargs zed zed-set-file-name zfanon zfautocheck zfcd zfcd_match zfcget xtermctl \
	allopt age checkmail chpwd_recent_{add,dirs,filehandler} calendar{,_{add,edit,lockfiles,parse,read,scandate,show,showdate,sort}} \
	run-help{,-{git,ip,openssl,p4,sudo,svk,svn}} \
	backward-kill-word-match backward-word-match bracketed-paste-url-magic capitalize-word-match copy-earlier-word quote-and-complete-word read-from-minibuffer \
	regexp-replace replace-argument replace-string replace-string-again select-bracketed select-quoted select-word-style send-invisible smart-insert-last-word split-shell-arguments

autoload -Uz autoload-all-in
autoload-all-in {$LOCAL_ZDOTDIR,$ZDOTDIR}/functions

