" .vimrc by sai pentaparthi

" pathogen to auto load all plugins
filetype off
call pathogen#incubate()
call pathogen#helptags()

"*********************GENERAL VIM SETTINGS ************************************
" leader mapping
let mapleader = "m"

" column marker
set colorcolumn=82

" windows split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Replace tabs with spaces
set tabstop=4 shiftwidth=4 expandtab
set nu

" tab navigation
noremap <S-h> gT
noremap <S-l> gt

" Color Scheme
colorscheme desert

" Virtal Editing
set virtualedit=onemore

" Save
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Searching
nmap <leader>a <Esc>:Ack!

"*****************************PLUGIN BASED SETTINGS***************************
" task list plugin
" Used to view the TODO's in the code
map <leader>tl <Plug>TaskList

" gundoToggle plugin
" revision history
map <leader>g :GundoToggle<CR>

" Syntax highlight and validation
syntax on
syntax enable
filetype on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0

" PEP8
let g:pep8_map='<leader>8'

" Nerd Tree
nmap <leader>f :NERDTreeToggle<CR>
let NERDTreeShowBookmarks = 1
let NERDTreeQuitOnOpen = 1
set splitright

" no hidden buffer when closed tab
set nohidden
set softtabstop=4
set shiftwidth=4
set backspace=2
set smartcase

" Tagbar
silent! nmap <leader>j :TagbarToggle<CR>
let g:tagbar_width = 50
let g:tagbar_autofocus = 1
let g:tagbar_left = 1
let g:tagbar_autoclose = 1

