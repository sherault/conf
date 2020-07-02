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
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab

" numero des lignes
set number
highlight LineNr term=bold ctermfg=darkgray guifg=darkgray

" Show when a line exceeds 80 chars
au BufWinEnter * let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)

" json syntax
autocmd BufNewFile,BufRead *.json set ft=javascript

" Shortcuts GTD
" check off a todo item and time stamp it
map gg ^rx: <Esc>:r! date +" [\%H:\%M]"<ENTER>kJA<Esc>$
" create a new todo item
map gt o	<Esc>:r! date +"	_ [\%H:\%M] "<ENTER>kJA
" end of day
map ed o<Esc>:r! date +"END =====[\%Y/\%m/\%d - \%H:\%M]====="<ENTER>kJA<Esc>o<Esc>
" new day
map nd o<Esc>:r! date +"BEGIN =====[\%Y/\%m/\%d - \%H:\%M]====="<ENTER>kJA<Esc>
" new week
map nw o<Esc>:r! date +"NEW WEEK ============ [\%Y/\%m/\%d - \%V]"<ENTER>kJA<Esc>o<Esc>
