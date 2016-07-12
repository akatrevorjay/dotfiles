
let g:notmuch_folders = [
	\ [ 'inbox unread',   'tag:inbox and tag:unread' ],
	\ [ 'inbox',          'tag:inbox' ],
	\ [ 'unread',         'tag:unread' ],
	\ [ 'starred',        'tag:starred' ],
	\ [ 'flagged',        'tag:flagged' ],
	\ [ 'sent',           'tag:sent' ],
	\ [ 'replied',        'tag:replied' ],
	\ [ 'signed',         'tag:signed' ],
	\ [ 'attachment',     'tag:attachment' ],
	\ [ 'to-do',          'tag:to-do' ],
	\ [ 'to-me',          'to:trevor and tag:new' ],
	\ ]

"let g:notmuch_custom_search_maps = {
"  \ 't':		'search_tag("+to-do -inbox")',
"  \ 'd':		'search_tag("+deleted -inbox -unread")',
"  \ }

"let g:notmuch_custom_show_maps = {
"  \ 't':		'show_tag("+to-do -inbox")',
"  \ 'd':		'show_tag("+deleted -inbox -unread")',
"  \ }

"let g:notmuch_date_format = '%d.%m.%y'

let g:notmuch_folders_count_threads = 1

"let g:notmuch_reader = 'mutt -f %s'
"let g:notmuch_sendmail = 'sendmail'
