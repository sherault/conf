" standard
set paste
set noai
set nocompatible
set hlsearch
set background=dark

" color
syntax on
color darkblue

" tabs
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" numero des lignes
"set number
"highlight LineNr term=bold ctermfg=darkgray guifg=darkgray

" Show when a line exceeds 80 chars
"au BufWinEnter * let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)

" json syntax
autocmd BufNewFile,BufRead *.json set ft=javascript
