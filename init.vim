execute pathogen#infect()
syntax on
set encoding=utf-8
filetype plugin indent on
set ignorecase smartcase
" Tab size
set tabstop=4
set shiftwidth=4
set expandtab
set nohlsearch

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

let g:gutentags_cache_dir = '~/.tags_cache'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

autocmd! BufWritePost * Neomake

" deoplete tab-complete "
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<S-tab>"

" Update time for plugins
set updatetime=250
