syntax on                       "Enables syntax highlighting
filetype on
filetype indent on
filetype plugin on


set backspace=2
set tabstop=4 softtabstop=4     "Insert 3 spaces for a tab
set shiftwidth=4                "Changes the number of spaces chanracters inserted for indentation
set smarttab                    "Makes tabbing smarter, it realize you have 2 vs 4
set expandtab                   "Converts tabs to spaces
set smartindent                 "Enables smart indent
set cmdheight=2                 "More space for displaying messages
set nu                          "Enables numberline
set relativenumber              "Enables relative number line
set nowrap                      "Desable the wrapping of long line test it will be now on single line
set smartcase                   "Only applies to search patterns that you type 
set mouse=a                     "Enables the mounse 
set splitbelow                  "Split horizontal window to below
set splitright                  "Split the vertical window to the right
set t_Co=256                    "Support 256 colors
set autoindent                  "Good auto indent
set noswapfile                  "Desable the creation of swap file for every file opened in vim
set nobackup                    "Desable the creation of backup file in vim
set undodir=~/.vim/undodir      "Save our undo action to a particular directory
set undofile                    "Creates a undo file 
set incsearch                   "Enables increamental search

highlight ColorColumn ctermbg=0 guibg=lightgrey

"Here below the is the call plug#begin, list of all the plugins I use, Using vim-plug
call plug#begin('~/.vim/plugged')     "Start of vim-plug plugin listing
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'morhetz/gruvbox'
Plug 'junegunn/goyo.vim'
"Plugin for colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'felixhummel/setcolors.vim'
Plug 'vim-scripts/Conque-Shell'
Plug 'gko/vim-coloresque'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
"Plug 'git@github.com:kien/ctrlp.vim.git'
"Plug 'git@github.com:Valloric/YouCompleteMe.git'
"Plug 'ycm-core/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'

call plug#end()                 "End of vim-plug plugin listing


set background=dark
colorscheme Tomorrow-Night-Bright

"setting a default shell
set guifont=Source\ Code\ Pro:h11

"To desable errorbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

"Below are the some of my keybindings that I personaly used to ooptimize my workflow

let mapleader = " "             "Leader key set to space bar

"For colorschemes
nnoremap <leader>c :colorscheme

"For NerdTree
nnoremap <leader>. :NERDTree<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

"Use alt + jklh key to resize window

"nnoremap <M-j>  :resize -2<CR>
"nnoremap <M-k>  :resize +2<CR>
"nnoremap <M-h>  :vertical resize -2<CR>
"nnoremap <M-l>  :vertical resize +2<CR>

"Changing jk or kj to work or remap to work as escape key
inoremap jk <Esc>
inoremap kj <Esc>

"Easy caps c stands for CTRL
inoremap <c-u> <Esc>viwUi
inoremap <c-u> viwU<Esc>


"Desables automatic commenting on new line
"autocmd FileType *setlocal formatoptions-=cro formatoptions-=r formatoptions-=o

"Delete all trailing whitespaces
"autocmd BufWritePre *%s/\s\+$//e

"Set width of goyo
"autocmd BufRead.BufNewFile /tmp/neomutt* let g:goyo_width=80
"autocmd BufRead.BufNewFile /tmp/neomutt* :Goyo

"using tab to navigate around the end to start of a code block
map <TAB> %

"Goyo
nnoremap <leader>f :Goyo<CR>

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>x :x<CR>
