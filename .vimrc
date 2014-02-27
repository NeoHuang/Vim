set number

filetype on
filetype plugin on
filetype indent on

syntax on
set expandtab
set tabstop=2
set shiftwidth=2
let mapleader=","
inoremap {	{}<Left>
inoremap {<CR>	{<CR>}<Esc>O
inoremap {{	{
inoremap {}	{} 
inoremap (	()<Left>
inoremap (<CR>	(<CR>)<Esc>O
inoremap ((	(
inoremap ()	()
nmap <F8> :TagbarToggle<CR>
set hlsearch
set nobackup
set noswapfile
if has("autocmd") && !has("win32")
 au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
 au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
 au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif
call pathogen#infect()
colorscheme codeschool
function! Startup()
  if 0 == argc()
    NERDTree
  endif
endfunction

autocmd VimEnter * call Startup()
