filetype plugin on
filetype indent on

" Auto read when a file is changed from outside
set autoread

syntax enable

" Auto Indent
set ai
set expandtab
set softtabstop=2
set shiftwidth=2

set showmatch

" :W sudo saves file
command W w !sudo tee % > /dev/null

