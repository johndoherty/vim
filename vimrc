" Setup pathogen
call pathogen#infect()
call pathogen#helptags()

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
