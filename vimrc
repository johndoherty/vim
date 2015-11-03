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

" Enable colors
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Set colorscheme
colorscheme peachpuff

" Change the leader to comma
let mapleader = ','

" Create some helpers to edit a file from the same directory as the current file
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Setup folding
" set foldmethod=indent
" nnoremap <Space> za
" set foldnestmax=2
" hi Folded cterm=NONE ctermbg=darkgray ctermfg=white

" autocmd FileType python setlocal foldmethod=indent foldnestmax=2
" autocmd FileType c setlocal foldmethod=syntax foldnestmax=4
" autocmd FileType cpp setlocal foldmethod=syntax foldnestmax=4

" Setup signs column
hi SignColumn ctermbg=black
hi clear SignColumn

" Cursor line highlight
set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white
hi CursorLine term=underline cterm=underline

" Change windows easier
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Always assume .md files are markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Make it easier to search for word under the cursor
map \ *N

map gr :grep <C-r><C-w> * -r

" Add clang-format
"map <C-I> :pyf ~/.vim/clang-format.py<cr>
"imap <C-I> <c-o>:pyf ~/.vim/clang-format.py<cr>

"function FormatFile()
"    let l:lines="all"
"    pyf ~/.vim/clang-format.py
"endfunction

"set background=dark

" local_vimrc options
let g:local_vimrc = ".local.vimrc"

" For vim-airline
set laststatus=2
set timeoutlen=50

" Camelcase motion
map <S-W> <Plug>CamelCaseMotion_w
map <S-B> <Plug>CamelCaseMotion_b
map <S-E> <Plug>CamelCaseMotion_e

