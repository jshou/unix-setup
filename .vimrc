syntax on
filetype indent on
set fileencodings=utf8,latin1
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set ruler
map <f2> :w\|!python2.6 %<CR>
set hlsearch

"set go-=T
"set bg=dark
"if &background == "dark"
"    hi normal guibg=black
"    set transp=8
"endif

map ,f :FufFile <CR>
map ,r :FufRenewCache <CR>
highlight PmenuSel ctermfg=black

imap <C-a> <Esc>0i
imap <C-e> <Esc>$a

autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
set hid " hide abandon buffers in order to not lose undo history

:au Filetype xml nmap <C-l> :%!xmllint --format -<CR>

:au BufRead,BufNewFile *.json set filetype=json
:au BufRead,BufNewFile *.avsc set filetype=json
:au Filetype json nmap <C-l> :%!ppjson<CR>
