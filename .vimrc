call pathogen#runtime_append_all_bundles()
syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype
filetype plugin on    " enable loading indent file for filetype

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number

let g:pydiction_location = '~/.vim/pydiction/complete-dict'

" Code folding - za
set foldmethod=indent
set foldlevel=99

" Move around windows using ctrl + movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" \8 for pep 8 validation
let g:pep8_map='<leader>8'

let g:pyflakes_use_quickfix=0

" Rope Refactoring
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
map <leader>o :RopeFindOccurrences<CR>

" NERDTree open and with focus on startup
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
" \n to toggle NERDTree
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Searching using Ack with \a
nmap <leader>a <Esc>:Ack!

" Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" Cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir,
    'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Make errors a different color than text
highlight SpellBad term=reverse ctermbg=magenta

" Run current file using python (F6 to allow param input)
" let g:ConqueTerm_ExecFileKey = '<F5>'
nmap <F5> :!clear; python %<CR>
nmap <F6> :!clear; python % 

" SuperTab for python completion
let g:SuperTabDefaultCompletionType = "context"

let Tlist_Use_Right_Window = 1
autocmd VimEnter *.py TlistOpen
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Enable_Fold_Column=0

set scrolloff=5

" Resize window width using + or -
map - <c-w><
map + <c-w>>
