if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd     " Show (partial) command in status line.
set showmatch       " Show matching brackets.

"   layout :    NUMBERING : ON | FOLDING : OFF | LINE WRAPPING : OFF | AUTO INDENT : true | TAB SIZE : 4 | ENABLE MOUSE
set nu
set nofoldenable
set nowrap

set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set mouse=a
set visualbell t_vb=
"   autocomplete :  php | c | perl | python | javascript | html | css | xml  
autocmd FileType php        set omnifunc=phpcomplete#CompletePHP
autocmd FileType c          set omnifunc=ccomplete#Complete
autocmd FileType perl       set omnifunc=PerlComplete
autocmd FileType python     set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css        set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml        set omnifunc=xmlcomplete#CompleteTags

