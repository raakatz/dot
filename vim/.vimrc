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
set statusline+=%{b:gitbranch}
set statusline+=%#LineNr#
set statusline+=\ 
set statusline+=%f
set statusline+=%m
set statusline+=%=
set statusline+=%{filetype}
set statusline+=\ 
set statusline+=%#CursorColumn#
set statusline+=%k
set statusline+=\ 
set statusline+=%l
set statusline+=:
set statusline+=%c
set statusline+=\ 
set statusline+=%P
set statusline+=\ 
set statusline+=%{strftime(\"%H:%M\")}

function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    try
      let l:dir=expand('%:p:h')
      let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
      if !v:shell_error
        let b:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').") "
      endif
    catch
    endtry
  endif
endfunction

augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END
