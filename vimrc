" Source the file inside ViM itself ':source ~/.vimrc'

" Disable compatibility with Vi
set nocompatible

" filetype plugin for file type specific handling
filetype on
filetype plugin on
filetype indent on

" For syntax highlighting
syntax on

" Highlights current line
set cursorline
" Change current line highlighting settings
hi CursorLine term=NONE cterm=NONE ctermbg=237
" Change statusline highlighting settings
hi StatusLine ctermfg=239

" Shows current line number
set number
" Shows relative line number to the current line
set relativenumber

" The logical tab
set shiftwidth=4
set tabstop=4
set expandtab

" Disable file wrapping
set nowrap

" Set incremental search to highlight as you search
set incsearch
" Ignore* case while seaching
set ignorecase
" Do not ignore case if search term has capital letters
set smartcase
" DO NOT KNOW
set showmatch
" Highlight all the matches
set hlsearch

" Show the command as it is being typed
set showcmd
set statusline=

" Customized status bar https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ \[%l\:\%c]\ \%p%%

" Show the status in the second last line
set laststatus=2

" Set ViM command history to 1000 (default: 20)
set history=1000

" Set ViM persistent undo https://sidneyliebrand.medium.com/vim-tip-persistent-undo-2fc78a2973a7
if has('persistent_undo')
    " define a path to store persistent undo files
    let target_path = expand('~/.config/vim-persisted-undo/')
    " create the directory and any parent directories if the location does not exist
    if !isdirectory(target_path)
        call system('mkdir -p ' . target_path)
    endif
    " point ViM to the defined undo directory and enable undo persistence
    " let &undodir = target_path
    " set undofile
    " set undolevels=1000
    " set undoreload=10000
endif
