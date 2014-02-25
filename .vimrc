set number

filetype on
filetype plugin on
filetype indent on

syntax on
set expandtab
set tabstop=2
set shiftwidth=2
inoremap {	{}<Left>
inoremap {<CR>	{<CR>}<Esc>O
inoremap {{	{
inoremap {}	{} 
inoremap (	()<Left>
inoremap (<CR>	(<CR>)<Esc>O
inoremap ((	(
inoremap ()	()
set hlsearch
set nobackup
set noswapfile
if has("autocmd")
 au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
 au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
 au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif
colorscheme codeschool

