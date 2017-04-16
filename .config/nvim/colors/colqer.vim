

"Keyboard is qwerty
" we want colmak in insert mode
function IMapColemak()
	if s:imap_colemak == 0

		noremap! e f

		noremap! r p

		noremap! t g

		noremap! y j

		noremap! u l

		noremap! i u

		noremap! o y

		noremap! p ;

		noremap! s r

		noremap! d s

		noremap! f t

		noremap! g d

		noremap! j n

		noremap! k e

		noremap! l i

		noremap! ; o

		noremap! n k

		noremap! E F

		noremap! R P

		noremap! T G

		noremap! Y J

		noremap! U L

		noremap! I U

		noremap! O Y

		noremap! P :

		noremap! S R

		noremap! D S

		noremap! F T

		noremap! G D

		noremap! J N

		noremap! K E

		noremap! L I

		noremap! : O

		noremap! N K

		let s:imap_colemak = 1
	endif
endfunction

function IUnmapColemak()
	if s:imap_colemak == 1

		unmap! e
	
		unmap! r
	
		unmap! t
	
		unmap! y
	
		unmap! u
	
		unmap! i
	
		unmap! o
	
		unmap! p
	
		unmap! s
	
		unmap! d
	
		unmap! f
	
		unmap! g
	
		unmap! j
	
		unmap! k
	
		unmap! l
	
		unmap! ;
	
		unmap! n
	
		unmap! E
	
		unmap! R
	
		unmap! T
	
		unmap! Y
	
		unmap! U
	
		unmap! I
	
		unmap! O
	
		unmap! P
	
		unmap! S
	
		unmap! D
	
		unmap! F
	
		unmap! G
	
		unmap! J
	
		unmap! K
	
		unmap! L
	
		unmap! :
	
		unmap! N
	
		let s:imap_colemak = 0
	endif
endfunction


"Keyboard is colemak
"we want to keep the qwerty for command mode
function CMapQwerty()
	if s:cmap_qwerty == 0

		noremap f e
		
		noremap <c-f> <c-e>
		

		noremap p r
		
		noremap <c-p> <c-r>
		

		noremap g t
		
		noremap <c-g> <c-t>
		

		noremap j y
		
		noremap <c-j> <c-y>
		

		noremap l u
		
		noremap <c-l> <c-u>
		

		noremap u i
		
		noremap <c-u> <c-i>
		

		noremap y o
		
		noremap <c-y> <c-o>
		

		noremap ; p
		

		noremap r s
		
		noremap <c-r> <c-s>
		

		noremap s d
		
		noremap <c-s> <c-d>
		

		noremap t f
		
		noremap <c-t> <c-f>
		

		noremap d g
		
		noremap <c-d> <c-g>
		

		noremap n j
		
		noremap <c-n> <c-j>
		

		noremap e k
		
		noremap <c-e> <c-k>
		

		noremap i l
		
		noremap <c-i> <c-l>
		

		noremap o ;
		
		noremap <c-o> <c-;>
		

		noremap k n
		
		noremap <c-k> <c-n>
		

		noremap F E
		

		noremap P R
		

		noremap G T
		

		noremap J Y
		

		noremap L U
		

		noremap U I
		

		noremap Y O
		

		noremap : P
		

		noremap R S
		

		noremap S D
		

		noremap T F
		

		noremap D G
		

		noremap N J
		

		noremap E K
		

		noremap I L
		

		noremap O :
		

		noremap K N
		

		let s:cmap_qwerty = 1
	endif
endfunction

function CUnmapQwerty()
	if s:cmap_qwerty == 1

		unmap f
		echo "UNMAPING unmap <c-f>"
		
		 unmap <c-f>
	 

		unmap p
		echo "UNMAPING unmap <c-p>"
		
		 unmap <c-p>
	 

		unmap g
		echo "UNMAPING unmap <c-g>"
		
		 unmap <c-g>
	 

		unmap j
		echo "UNMAPING unmap <c-j>"
		
		 unmap <c-j>
	 

		unmap l
		echo "UNMAPING unmap <c-l>"
		
		 unmap <c-l>
	 

		unmap u
		echo "UNMAPING unmap <c-u>"
		
		 unmap <c-u>
	 

		unmap y
		echo "UNMAPING unmap <c-y>"
		
		 unmap <c-y>
	 

		unmap ;
		echo "UNMAPING unmap <c-;>"
		

		unmap r
		echo "UNMAPING unmap <c-r>"
		
		 unmap <c-r>
	 

		unmap s
		echo "UNMAPING unmap <c-s>"
		
		 unmap <c-s>
	 

		unmap t
		echo "UNMAPING unmap <c-t>"
		
		 unmap <c-t>
	 

		unmap d
		echo "UNMAPING unmap <c-d>"
		
		 unmap <c-d>
	 

		unmap n
		echo "UNMAPING unmap <c-n>"
		
		 unmap <c-n>
	 

		unmap e
		echo "UNMAPING unmap <c-e>"
		
		 unmap <c-e>
	 

		unmap i
		echo "UNMAPING unmap <c-i>"
		
		 unmap <c-i>
	 

		unmap o
		echo "UNMAPING unmap <c-o>"
		
		 unmap <c-o>
	 

		unmap k
		echo "UNMAPING unmap <c-k>"
		
		 unmap <c-k>
	 

		unmap F
		echo "UNMAPING unmap <c-F>"
		

		unmap P
		echo "UNMAPING unmap <c-P>"
		

		unmap G
		echo "UNMAPING unmap <c-G>"
		

		unmap J
		echo "UNMAPING unmap <c-J>"
		

		unmap L
		echo "UNMAPING unmap <c-L>"
		

		unmap U
		echo "UNMAPING unmap <c-U>"
		

		unmap Y
		echo "UNMAPING unmap <c-Y>"
		

		unmap :
		echo "UNMAPING unmap <c-:>"
		

		unmap R
		echo "UNMAPING unmap <c-R>"
		

		unmap S
		echo "UNMAPING unmap <c-S>"
		

		unmap T
		echo "UNMAPING unmap <c-T>"
		

		unmap D
		echo "UNMAPING unmap <c-D>"
		

		unmap N
		echo "UNMAPING unmap <c-N>"
		

		unmap E
		echo "UNMAPING unmap <c-E>"
		

		unmap I
		echo "UNMAPING unmap <c-I>"
		

		unmap O
		echo "UNMAPING unmap <c-O>"
		

		unmap K
		echo "UNMAPING unmap <c-K>"
		

		let s:cmap_qwerty = 0
	endif
endfunction


map <Plug>IMapColemakUnmapColemak :call IMapColemak()<CR>

map <Plug>IUnmapColemakUnmapColemak :call IUnmapColemak()<CR>

map <Plug>CmapQwertyUnmapColemak :call CmapQwerty()<CR>

map <Plug>CunmapQwertyUnmapColemak :call CunmapQwerty()<CR>


let s:imap_colemak = 0
function IMapColemakSwitch()
	call CUnmapQwerty()
	if s:imap_colemak == 1
	 	call IUnmapColemak()
		echo "Normal"
	else
	 	call IMapColemak()
		echo "COLEMAK"
	end
endfunction

let s:cmap_qwerty = 0
function CMapQwertySwitch()
	call IUnmapColemak()
	if s:cmap_qwerty == 1
	 	call CUnmapQwerty()
		echo "Normal"
	else
	 	call CMapQwerty()
		echo "QWERTY"
	end
endfunction

nnoremap <Leader>; :call IMapColemakSwitch()<cr>
nnoremap <Leader>o :call CMapQwertySwitch()<cr>
