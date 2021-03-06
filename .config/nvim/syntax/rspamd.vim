if exists("b:current_syntax")
    finish
endif

" Configuration sections
syntax match rspamdKeyword "\s*\.include"
syntax match rspamdKeyword "\s*logging"
syntax match rspamdKeyword "\s*metrics"
syntax match rspamdKeyword "\s*mime_types"
syntax match rspamdKeyword "\s*options"
syntax match rspamdKeyword "\s*phishing"
syntax match rspamdKeyword "\s*worker"

syntax keyword rspamdWorkerKeyword bind_socket
syntax keyword rspamdWorkerKeyword count
syntax keyword rspamdIncludeSpecial merge
syntax keyword rspamdIncludeKeyword try priority duplicate

" Lua and C modules
syntax keyword rspamdModuleKeyword antivirus
syntax keyword rspamdModuleKeyword asn
syntax keyword rspamdModuleKeyword dcc
syntax keyword rspamdModuleKeyword chartable
syntax keyword rspamdModuleKeyword clickhouse
syntax keyword rspamdModuleKeyword dcc
syntax keyword rspamdModuleKeyword dkim
syntax keyword rspamdModuleKeyword dmarc
syntax keyword rspamdModuleKeyword emails
syntax keyword rspamdModuleKeyword fann_redis
syntax keyword rspamdModuleKeyword force_actions
syntax keyword rspamdModuleKeyword forged_recipients
syntax keyword rspamdModuleKeyword fuzzy_check
syntax keyword rspamdModuleKeyword greylist
syntax keyword rspamdModuleKeyword hfilter
syntax keyword rspamdModuleKeyword ip_score
syntax keyword rspamdModuleKeyword maillist
syntax keyword rspamdModuleKeyword metadata_exporter
syntax keyword rspamdModuleKeyword metric_exporter
syntax keyword rspamdModuleKeyword mid
syntax keyword rspamdModuleKeyword mime_types
syntax keyword rspamdModuleKeyword multimap
syntax keyword rspamdModuleKeyword mx_check
syntax keyword rspamdModuleKeyword once_received
syntax keyword rspamdModuleKeyword phishing
syntax keyword rspamdModuleKeyword ratelimit
syntax keyword rspamdModuleKeyword rbl
syntax keyword rspamdModuleKeyword redis
syntax keyword rspamdModuleKeyword regexp
syntax keyword rspamdModuleKeyword replies
syntax keyword rspamdModuleKeyword rmilter_headers
syntax keyword rspamdModuleKeyword rspamd_update
syntax keyword rspamdModuleKeyword settings
syntax keyword rspamdModuleKeyword spf
syntax keyword rspamdModuleKeyword surbl
syntax keyword rspamdModuleKeyword url_redirector
syntax keyword rspamdModuleKeyword url_reputation
syntax keyword rspamdModuleKeyword url_tags
"syntax keyword rspamdModuleKeyword whitelist

" Lua and C module parameter
syntax keyword rspamdParamKeyword action
syntax keyword rspamdParamKeyword actions
syntax keyword rspamdParamKeyword add_header
syntax keyword rspamdParamKeyword add_header_score
syntax keyword rspamdParamKeyword algorithm
syntax keyword rspamdParamKeyword allow_raw_input
syntax keyword rspamdParamKeyword apply
syntax keyword rspamdParamKeyword archive_extensions
syntax keyword rspamdParamKeyword asn_prefix
syntax keyword rspamdParamKeyword asn_table
syntax keyword rspamdParamKeyword attachments_only
syntax keyword rspamdParamKeyword attachments_table
syntax keyword rspamdParamKeyword authenticated
syntax keyword rspamdParamKeyword authentication-results
syntax keyword rspamdParamKeyword autolearn
syntax keyword rspamdParamKeyword backend
syntax keyword rspamdParamKeyword bad_archive_extensions
syntax keyword rspamdParamKeyword bad_extensions
syntax keyword rspamdParamKeyword bad_host
syntax keyword rspamdParamKeyword bayes_ham_symbols
syntax keyword rspamdParamKeyword bayes_spam_symbols
syntax keyword rspamdParamKeyword bits
syntax keyword rspamdParamKeyword bounce_to
syntax keyword rspamdParamKeyword bounce_to_ip
syntax keyword rspamdParamKeyword cache
syntax keyword rspamdParamKeyword cache_file
syntax keyword rspamdParamKeyword check_all_filters
syntax keyword rspamdParamKeyword check_ssl
syntax keyword rspamdParamKeyword clamav
syntax keyword rspamdParamKeyword classifier
syntax keyword rspamdParamKeyword classify_headers
syntax keyword rspamdParamKeyword color
syntax keyword rspamdParamKeyword composites
syntax keyword rspamdParamKeyword control_socket
syntax keyword rspamdParamKeyword cores_dir
syntax keyword rspamdParamKeyword country
syntax keyword rspamdParamKeyword country_prefix
syntax keyword rspamdParamKeyword custom_select
syntax keyword rspamdParamKeyword db
syntax keyword rspamdParamKeyword debug_ip
syntax keyword rspamdParamKeyword debug_modules
syntax keyword rspamdParamKeyword default_exclude_users
syntax keyword rspamdParamKeyword default_from
syntax keyword rspamdParamKeyword default_received
syntax keyword rspamdParamKeyword default_unknown
syntax keyword rspamdParamKeyword description
syntax keyword rspamdParamKeyword disable_hyperscan
syntax keyword rspamdParamKeyword disabled_modules
syntax keyword rspamdParamKeyword disposable_cc
syntax keyword rspamdParamKeyword disposable_envfrom
syntax keyword rspamdParamKeyword disposable_envrcpt
syntax keyword rspamdParamKeyword disposable_from
syntax keyword rspamdParamKeyword disposable_replyto
syntax keyword rspamdParamKeyword disposable_to
syntax keyword rspamdParamKeyword dkim_allow_symbols
syntax keyword rspamdParamKeyword dkim_cache_expire
syntax keyword rspamdParamKeyword dkim_cache_size
syntax keyword rspamdParamKeyword dkim_reject_symbols
syntax keyword rspamdParamKeyword dmarc_allow_symbols
syntax keyword rspamdParamKeyword dmarc_reject_symbols
syntax keyword rspamdParamKeyword dns
syntax keyword rspamdParamKeyword domains
syntax keyword rspamdParamKeyword dynamic_conf
syntax keyword rspamdParamKeyword enable_password
syntax keyword rspamdParamKeyword enabled
syntax keyword rspamdParamKeyword encryption_key
syntax keyword rspamdParamKeyword exceptions
syntax keyword rspamdParamKeyword exclude_local
syntax keyword rspamdParamKeyword exclude_private_ips
syntax keyword rspamdParamKeyword exclude_users
syntax keyword rspamdParamKeyword expire
syntax keyword rspamdParamKeyword explicit_modules
syntax keyword rspamdParamKeyword expression
syntax keyword rspamdParamKeyword extension_map
syntax keyword rspamdParamKeyword facility
syntax keyword rspamdParamKeyword fann_file
syntax keyword rspamdParamKeyword fann_symbols
syntax keyword rspamdParamKeyword file
syntax keyword rspamdParamKeyword filename
syntax keyword rspamdParamKeyword filter
syntax keyword rspamdParamKeyword filters
syntax keyword rspamdParamKeyword first
syntax keyword rspamdParamKeyword flag
syntax keyword rspamdParamKeyword foreign_symbols
syntax keyword rspamdParamKeyword formatter
syntax keyword rspamdParamKeyword freemail_cc
syntax keyword rspamdParamKeyword freemail_envfrom
syntax keyword rspamdParamKeyword freemail_envrcpt
syntax keyword rspamdParamKeyword freemail_from
syntax keyword rspamdParamKeyword freemail_replyto
syntax keyword rspamdParamKeyword freemail_to
syntax keyword rspamdParamKeyword from
syntax keyword rspamdParamKeyword from_enabled
syntax keyword rspamdParamKeyword from_tables
syntax keyword rspamdParamKeyword full_urls
syntax keyword rspamdParamKeyword fuzzy_key
syntax keyword rspamdParamKeyword fuzzy_map
syntax keyword rspamdParamKeyword fuzzy_shingles_key
syntax keyword rspamdParamKeyword fuzzy_symbols
syntax keyword rspamdParamKeyword good_host
syntax keyword rspamdParamKeyword greylist
syntax keyword rspamdParamKeyword group
syntax keyword rspamdParamKeyword groups_disabled
syntax keyword rspamdParamKeyword groups_enabled
syntax keyword rspamdParamKeyword ham_score
syntax keyword rspamdParamKeyword hash
syntax keyword rspamdParamKeyword header
syntax keyword rspamdParamKeyword helo
syntax keyword rspamdParamKeyword helo_enabled
syntax keyword rspamdParamKeyword history_file
syntax keyword rspamdParamKeyword history_rows
syntax keyword rspamdParamKeyword honor_action
syntax keyword rspamdParamKeyword host
syntax keyword rspamdParamKeyword hostname_enabled
syntax keyword rspamdParamKeyword hs_cache_dir
syntax keyword rspamdParamKeyword html
syntax keyword rspamdParamKeyword ignore_surbl
syntax keyword rspamdParamKeyword ignore_tags
syntax keyword rspamdParamKeyword ignore_whitelists
syntax keyword rspamdParamKeyword ip asn_prefix
syntax keyword rspamdParamKeyword ip4
syntax keyword rspamdParamKeyword ip6
syntax keyword rspamdParamKeyword ipmask
syntax keyword rspamdParamKeyword ipmask6
syntax keyword rspamdParamKeyword ipnet
syntax keyword rspamdParamKeyword ipnet_prefix
syntax keyword rspamdParamKeyword ips
syntax keyword rspamdParamKeyword ipv4
syntax keyword rspamdParamKeyword ipv4_mask
syntax keyword rspamdParamKeyword ipv6
syntax keyword rspamdParamKeyword ipv6_mask
syntax keyword rspamdParamKeyword is_whitelist
syntax keyword rspamdParamKeyword key
syntax keyword rspamdParamKeyword key_prefix
syntax keyword rspamdParamKeyword languages_enabled
syntax keyword rspamdParamKeyword learn_condition
syntax keyword rspamdParamKeyword level
syntax keyword rspamdParamKeyword limit
syntax keyword rspamdParamKeyword local_addrs
syntax keyword rspamdParamKeyword local_networks
syntax keyword rspamdParamKeyword log_buffer
syntax keyword rspamdParamKeyword log_clean
syntax keyword rspamdParamKeyword log_color
syntax keyword rspamdParamKeyword log_format
syntax keyword rspamdParamKeyword log_re_cache
syntax keyword rspamdParamKeyword log_urls
syntax keyword rspamdParamKeyword lower_bound
syntax keyword rspamdParamKeyword lua
syntax keyword rspamdParamKeyword mail_from
syntax keyword rspamdParamKeyword mail_to
syntax keyword rspamdParamKeyword map
syntax keyword rspamdParamKeyword map_watch_interval
syntax keyword rspamdParamKeyword max_cores_count
syntax keyword rspamdParamKeyword max_cores_size
syntax keyword rspamdParamKeyword max_data_len
syntax keyword rspamdParamKeyword max_epoch
syntax keyword rspamdParamKeyword max_rcpt
syntax keyword rspamdParamKeyword max_score
syntax keyword rspamdParamKeyword max_size
syntax keyword rspamdParamKeyword max_train
syntax keyword rspamdParamKeyword max_usages
syntax keyword rspamdParamKeyword message
syntax keyword rspamdParamKeyword meta_headers
syntax keyword rspamdParamKeyword metric
syntax keyword rspamdParamKeyword mid_enabled
syntax keyword rspamdParamKeyword min_bytes
syntax keyword rspamdParamKeyword min_learns
syntax keyword rspamdParamKeyword min_score
syntax keyword rspamdParamKeyword min_tokens
syntax keyword rspamdParamKeyword min_word_len
syntax keyword rspamdParamKeyword modules
syntax keyword rspamdParamKeyword name
syntax keyword rspamdParamKeyword nameserver
syntax keyword rspamdParamKeyword neighbours
syntax keyword rspamdParamKeyword nested_limit
syntax keyword rspamdParamKeyword no_action
syntax keyword rspamdParamKeyword no_action_score
syntax keyword rspamdParamKeyword no_ip
syntax keyword rspamdParamKeyword one_shot
syntax keyword rspamdParamKeyword openphish_enabled
syntax keyword rspamdParamKeyword openphish_map
syntax keyword rspamdParamKeyword openphish_premium
syntax keyword rspamdParamKeyword password
syntax keyword rspamdParamKeyword path
syntax keyword rspamdParamKeyword patterns
syntax keyword rspamdParamKeyword pdf
syntax keyword rspamdParamKeyword per_user
syntax keyword rspamdParamKeyword phishtank_enabled
syntax keyword rspamdParamKeyword phishtank_map
syntax keyword rspamdParamKeyword pidfile
syntax keyword rspamdParamKeyword policy
syntax keyword rspamdParamKeyword port
syntax keyword rspamdParamKeyword prefilter
syntax keyword rspamdParamKeyword prefix
syntax keyword rspamdParamKeyword product_id
syntax keyword rspamdParamKeyword provider_info
syntax keyword rspamdParamKeyword provider_type
syntax keyword rspamdParamKeyword proxy
syntax keyword rspamdParamKeyword quarantine
syntax keyword rspamdParamKeyword query_limit
syntax keyword rspamdParamKeyword rates
syntax keyword rspamdParamKeyword raw_mode
syntax keyword rspamdParamKeyword rbls
syntax keyword rspamdParamKeyword rcpt
syntax keyword rspamdParamKeyword rcpt_enabled
syntax keyword rspamdParamKeyword read_only
syntax keyword rspamdParamKeyword received
syntax keyword rspamdParamKeyword redirector_domains
syntax keyword rspamdParamKeyword regexp
syntax keyword rspamdParamKeyword reject
syntax keyword rspamdParamKeyword reject_score
syntax keyword rspamdParamKeyword relevance
syntax keyword rspamdParamKeyword reporting
syntax keyword rspamdParamKeyword request_header
syntax keyword rspamdParamKeyword require_action
syntax keyword rspamdParamKeyword require_symbols
syntax keyword rspamdParamKeyword resolve_ip
syntax keyword rspamdParamKeyword retransmits
syntax keyword rspamdParamKeyword returncodes
syntax keyword rspamdParamKeyword rewrite_subject
syntax keyword rspamdParamKeyword routines
syntax keyword rspamdParamKeyword rrd
syntax keyword rspamdParamKeyword rule
syntax keyword rspamdParamKeyword rules
syntax keyword rspamdParamKeyword savapi
syntax keyword rspamdParamKeyword score
syntax keyword rspamdParamKeyword score_divisor
syntax keyword rspamdParamKeyword scores
syntax keyword rspamdParamKeyword second
syntax keyword rspamdParamKeyword selector
syntax keyword rspamdParamKeyword sender_from_regexp
syntax keyword rspamdParamKeyword sender_from_whitelist_user
syntax keyword rspamdParamKeyword servers
syntax keyword rspamdParamKeyword skip_multi
syntax keyword rspamdParamKeyword skip_unknown
syntax keyword rspamdParamKeyword smtp
syntax keyword rspamdParamKeyword smtp_port
syntax keyword rspamdParamKeyword sockets
syntax keyword rspamdParamKeyword soft_bounce
syntax keyword rspamdParamKeyword source
syntax keyword rspamdParamKeyword spam
syntax keyword rspamdParamKeyword spam_score
syntax keyword rspamdParamKeyword spf_cache_expire
syntax keyword rspamdParamKeyword spf_cache_size
syntax keyword rspamdParamKeyword statfile
syntax keyword rspamdParamKeyword strict_domains
syntax keyword rspamdParamKeyword subject
syntax keyword rspamdParamKeyword suffix
syntax keyword rspamdParamKeyword symbol
syntax keyword rspamdParamKeyword symbol_bad_mx
syntax keyword rspamdParamKeyword symbol_good_mx
syntax keyword rspamdParamKeyword symbol_no_mx
syntax keyword rspamdParamKeyword symbol_rcpt
syntax keyword rspamdParamKeyword symbol_sender
syntax keyword rspamdParamKeyword symbol_strict
syntax keyword rspamdParamKeyword symbols
syntax keyword rspamdParamKeyword symbols_disabled
syntax keyword rspamdParamKeyword symbols_enabled
syntax keyword rspamdParamKeyword systemd
syntax keyword rspamdParamKeyword table
syntax keyword rspamdParamKeyword tempdir
syntax keyword rspamdParamKeyword third
syntax keyword rspamdParamKeyword threshold
syntax keyword rspamdParamKeyword time_jitter
syntax keyword rspamdParamKeyword timeout
syntax keyword rspamdParamKeyword to
syntax keyword rspamdParamKeyword to_ip
syntax keyword rspamdParamKeyword to_ip_from
syntax keyword rspamdParamKeyword tokenizer
syntax keyword rspamdParamKeyword train
syntax keyword rspamdParamKeyword trusted_only
syntax keyword rspamdParamKeyword txt
syntax keyword rspamdParamKeyword type
syntax keyword rspamdParamKeyword unknown_weight
syntax keyword rspamdParamKeyword update_limit
syntax keyword rspamdParamKeyword url
syntax keyword rspamdParamKeyword url_enabled
syntax keyword rspamdParamKeyword url_map
syntax keyword rspamdParamKeyword url_tld
syntax keyword rspamdParamKeyword url_tld_re
syntax keyword rspamdParamKeyword urls_table
syntax keyword rspamdParamKeyword use
syntax keyword rspamdParamKeyword use_settings
syntax keyword rspamdParamKeyword user
syntax keyword rspamdParamKeyword valid_dkim
syntax keyword rspamdParamKeyword valid_dmarc
syntax keyword rspamdParamKeyword valid_spf
syntax keyword rspamdParamKeyword want_spam
syntax keyword rspamdParamKeyword weight
syntax keyword rspamdParamKeyword whitelist
syntax keyword rspamdParamKeyword whitelist_domains_url
syntax keyword rspamdParamKeyword whitelist_exception
syntax keyword rspamdParamKeyword whitelist_symbols
syntax keyword rspamdParamKeyword whitelisted_rcpts
syntax keyword rspamdParamKeyword words_decay
syntax keyword rspamdParamKeyword write_servers
syntax keyword rspamdParamKeyword x-spam-level
syntax keyword rspamdParamKeyword x-spam-status
syntax keyword rspamdParamKeyword x-spamd-bar

" Variables
syntax keyword rspamdVarDef CONFDIR
syntax keyword rspamdVarDef DBDIR
syntax keyword rspamdVarDef LOCALCONFDIR
syntax match rspamdVarRef "$\<CONFDIR\>"
syntax match rspamdVarRef "$\<DBDIR\>"
syntax match rspamdVarRef "$\<LOCAL_CONFDIR\>"

syntax region rspamdString start=/"/ skip=/\\"/ end=/"/
syntax keyword rspamdBool true false yes no on off
syntax keyword rspamdTodo TODO FIXME XXX contained

syntax match rspamdComment "\v#.*$"
syntax match rspamdOperator "\v\+"
syntax match rspamdOperator "\v-"
syntax match rspamdOperator "\v\*\="
syntax match rspamdOperator "\v/\="
syntax match rspamdNumber "\<\d\+\>"
syntax match rspamdVar "\$\w\+" contains=rspamdVarDef
syntax region rspamdComment matchgroup=rspamdComment start="/\*" end="\*/" contains=rspamdTodo
syntax region rspamdHereDocText matchgroup=rspamdString start="<<[-~.]*\z([A-Z]\+\)" end="^\s*\z1" contains=NONE

highlight link rspamdKeyword Keyword
highlight link rspamdModuleKeyword Type
highlight link rspamdParamKeyword Keyword

highlight link rspamdVarDef PreProc
highlight link rspamdVarRef PreProc
highlight link rspamdOperator Operator
highlight link rspamdBool Boolean
highlight link rspamdString String
highlight link rspamdVar PreProc
highlight link rspamdNumber Number
highlight link rspamdHereDocText String
highlight link rspamdTodo Todo
highlight link rspamdComment Comment

highlight link rspamdWorkerKeyword Keyword
highlight link rspamdIncludeKeyword Type
highlight link rspamdIncludeSpecial Special


let b:current_syntax = "rspamd"
