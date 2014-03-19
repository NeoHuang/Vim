set langmenu=en
language mes en
if has("multi_byte")
	set encoding=utf-8
	set fileencoding=utf-8
	set bomb
	set termencoding=utf-8
	set fileencodings=utf-8,chinese,latin1
else
	echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

if has("win32")
	set fileencoding=chinese
else
	set fileencoding=utf-8
endif
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
inoremap [	[]<Left>
inoremap [<CR>	[<CR>]<Esc>O
inoremap [[	[
inoremap [] []
inoremap ' ''<Left>
inoremap '' ''
inoremap " ""<Left>
inoremap "" ""	
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


