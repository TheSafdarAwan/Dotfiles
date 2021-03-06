let mapleader = " "

syntax on
filetype plugin indent on
set background=dark

" colorscheme elflord
" colorscheme  peachpuff
" colorscheme shine
" colorscheme zellner

set number 
set relativenumber 
set clipboard+=unnamedplus

set nowrap

set tabstop=4
set shiftwidth=4
set softtabstop=4

set hlsearch

set ignorecase
set smartcase

set expandtab

set noswapfile
set undofile
set undodir=~/.vim/vim_undodir

set wildmenu

set completeopt="menuone,noselect"

cmap w!! w !sudo tee > /dev/null %

nnoremap <C-[> :nohl<CR>
set timeoutlen=1000 ttimeoutlen=0

" Center the next searched item
nnoremap n nzz
nnoremap N Nzz

" undo break start new change points NOTE: it works only with ! , ` . =
inoremap ! !<c-g>u
inoremap ` `<c-g>u
inoremap . .<c-g>u
inoremap , ,<c-g>u
inoremap = =<c-g>u

" Move Lines up and down
vnoremap <C-j> :m '>+1<cr>gv=gv
vnoremap <C-k> :m '<-2<cr>gv=gv

" Indentation
vnoremap < <gv
vnoremap > >gv

nnoremap <leader>ss :set spell!<cr>
nnoremap <leader>vex :Explore<cr>

" cursor shape setting
let &t_EI = "\<esc>[1 q"
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[1 q"

autocmd InsertLeave * silent !echo -ne "\e[1 q"
autocmd InsertLeave * redraw!
autocmd VimEnter * execute "normal \<C-G>"

hi MatchParen cterm=bold ctermbg=none ctermfg=magenta
