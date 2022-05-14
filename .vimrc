syntax on                       "Enables syntax highlighting
filetype on
filetype indent on
filetype plugin on

set encoding=UTF-8
set backspace=indent,eol,start  "Fixing ctrl + backspace to delete previous word 
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
set undodir=$HOME\.vim\undodir      "Save our undo action to a particular directory
set undofile                    "Creates a undo file 
set incsearch                   "Enables increamental search

highlight ColorColumn ctermbg=0 guibg=lightgrey

"Here below the is the call plug#begin, list of all the plugins I use, Using vim-plug
call plug#begin('$HOME\vimfiles\autoload\')     "Start of vim-plug plugin listing
"Plug 'morhetz/gruvbox'
"rainbow brackets for vim
Plug 'frazrepo/vim-rainbow'
Plug 'junegunn/goyo.vim'
"Plugin for colorschemes
Plug 'flazz/vim-colorschemes'
"winteractive window manager
Plug 'romgrk/winteract.vim'
"ex window
Plug 'anotherproksy/ez-window'
Plug 'felixhummel/setcolors.vim'
Plug 'vim-scripts/Conque-Shell'
Plug 'gko/vim-coloresque'
"this plugin enable fullscreen by pressing ctrl + enter
Plug 'lambdalisue/vim-fullscreen'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'kien/ctrlp.vim'
Plug 'mbbill/undotree'
"Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
"devicons
"Plug 'ryanoasis/vim-devicons'

call plug#end()                 "End of vim-plug plugin listing


set background=dark
colorscheme Tomorrow-Night-Bright

"setting a default font
set guifont=Source\ Code\ Pro:h14

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
nnoremap <leader>. :NERDTreeToggle<CR>

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

" Map Ctrl-Backspace to delete the previous word in insert mode.
imap <C-BS> <C-W>
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
inoremap <C-w> <C-\><C-o>dB
inoremap <C-BS> <C-\><C-o>db

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

"hiding things
"set guioptions-=m  "menu bar
"set guioptions-=T  "toolbar
"set guioptions-=r  "scrollbar

"this function will enable the bar by pressing <F11>
function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>
map <F5>  :! cmd <CR>
map <F4>  :!xcopy 

" by default, hide gui menus
set guioptions=i

"winteractive 
nmap gw        :InteractiveWindow<CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" shortcut to switch between buffer
map J :bn<CR>
map K :bp<CR> 
