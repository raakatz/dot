set nocompatible

" INDENTATION
set expandtab
set ts=2
set sw=2
set ai
set si

" SEARCH
set ignorecase
set smartcase
set incsearch
set hlsearch

" LINE NUMBERS
set number
set relativenumber

" TEXT RENDERING
syntax enable
filetype on
filetype plugin on
filetype indent on
set wrap

" UI
set wildmenu
set wildmode=list:longest
set noerrorbells
set novisualbell

" FOLDING
set foldmethod=indent
set foldnestmax=100
set foldcolumn=2
set foldlevel=100

" MISC
set confirm
set hidden

" STATUSLINE
set laststatus=2

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
