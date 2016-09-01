execute pathogen#infect()
syntax enable
filetype plugin indent on

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

" Ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Editor
set number
set ts=4
set sw=4
set cursorline
set autoindent
set expandtab
set showmatch

let python_highlight_all = 1

" Theme
set background=dark
colorscheme solarized
