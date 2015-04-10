set langmenu=en
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
execute pathogen#infect()
syntax on
set number
filetype on
filetype plugin on
filetype indent on

set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set nobackup
set noswapfile
set ignorecase
set smartcase
set hlsearch
set textwidth=79
set colorcolumn=85

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
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nmap <F10> :NERDTree<CR>

nnoremap gp `[v`]
" move up in screen line
nnoremap j gj
" move down in screen line
nnoremap k gk
" delete highlight of search
nnoremap <leader><space> :noh<cr>
" fold tag
nnoremap <leader>ft Vatzf
" paste external text
nnoremap <leader>p "*p
" select last pasted text
nnoremap <leader>v V`]
" movements between window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
if has("autocmd") && !has("win32")
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif
call pathogen#infect()
colorscheme codeschool
function! Startup()
  if has("gui_running")
    " GUI is running or is about to start.
    " Maximize gvim window.
    set lines=999 columns=999
  endif
  if 0 == argc()
    NERDTree
  endif
endfunction


autocmd VimEnter * call Startup()


