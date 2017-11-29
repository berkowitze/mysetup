" basic setup stuff
inoremap jk <ESC> 
set mouse=a
set ruler
set laststatus=2
set backspace=2
vmap ç "*y
syntax enable
set scrolloff=2
colorscheme badwolf

" set tab stuff
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
" two-space indent for html/ocaml
autocmd FileType html  setlocal shiftwidth=2 tabstop=2
autocmd FileType ocaml setlocal shiftwidth=2 tabstop=2

set pastetoggle=<F10>

