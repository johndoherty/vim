" Setup pathogen
call pathogen#infect()
call pathogen#helptags()

" Some basic setup
syntax on
set hlsearch

set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set number

" Change the leader to comma
let mapleader = ','

" Create some helpers to edit a file from the same directory as the current file
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Setup folding
set foldmethod=indent
nnoremap <Space> za
set foldnestmax=2
autocmd FileType python setlocal foldmethod=indent foldnestmax=2
autocmd FileType c setlocal foldmethod=syntax foldnestmax=1
autocmd FileType cpp setlocal foldmethod=syntax foldnestmax=2

" Cursor line highlight
set cursorline
hi CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white

" Change windows easier
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
