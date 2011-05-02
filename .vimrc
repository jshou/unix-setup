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

map ,f :FufFile <CR>
map ,r :FufRenewCache <CR>
highlight Pmenu ctermbg=darkyellow ctermfg=black
highlight PmenuSel ctermbg=lightgreen ctermfg=black

imap <C-a> <Esc>0i
imap <C-e> <Esc>$a

autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
set hid " hide abandon buffers in order to not lose undo history

:au Filetype xml nmap <C-l> :%!xmllint --format -<CR>

nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode
