" This must be first, because it changes other options as side effect
set nocompatible

" enable extended matching for %
runtime macros/matchit.vim

" Pathogen setup
" execute pathogen#infect()
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

" Remove modelines
set modelines=0

" always expand tabs
set expandtab
set softtabstop=4

" some useful stuff
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set ttyfast
set ruler
set laststatus=2

" strip all trailing spaces from a file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" keymap for ack
nnoremap <leader>a :Ack

" sets every line number to be relative to the present. Maybe useful
set relativenumber

" creates an .un file to save the undo changes for later. Extremely useful
set undofile

" use normal regexes
noremap / /\v
vnoremap / /\v

" apply substitutions globally by default
set gdefault


" map leader key to something more usable
let mapleader=","

" Quickly edit/reload the vimrc file
" nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" mapping jj to esc
inoremap jj <ESC>

" Setting line number
set number

" don't jwrap lines
" set nowrap

" a tab is four spaces
set tabstop=4

" save on losing focus
au FocusLost * :wa

" allows backspacing over everything in insert mode
set backspace=indent,eol,start

" always set autoindenting on
set autoindent

" copy the previous indentation on autoindenting
set copyindent

" always show line numbers
set number

" number of spaces to be used for autoindenting
set shiftwidth=4

" use multiple shiftwidth when indenting with '<' and '>'
set shiftround

" show matching paranthesis
set showmatch

" ignore case while searching
set ignorecase

" ignore case if search patter in all lowercase, case-sensitive otherwise.
set smartcase

" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab

" highlight search terms
set hlsearch

" incremental search
set incsearch

" filetype indenting
filetype plugin indent on
autocmd filetype python set expandtab

" setting pastetoggle
set pastetoggle=<F2>

" enabling mouse
set mouse=a

" mapping ; to :
nnoremap ; :

" mapping the arrow keys to nop
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" settinc copy paste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>a
vmap <C-C> "+y

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" use normal regexes
nnoremap / /\v
vnoremap / /\v

" clear hilighted searches
noremap <leader><space> :noh<cr>

" make tab match bracket pairs instead of %
noremap <tab> %

" handling long lines
set textwidth=79
set formatoptions=qrnl
set colorcolumn=85

" show invisible chars
set list
set listchars=tab:▸\ ,eol:¬

" save on losing focus
au FocusLost * :wa

" syntax highlighting.
if &t_Co >= 256 || has("gui_running")
   colorscheme vividchalk
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif
"  ********************************  History stuff

" remember a lot more commands
set history=10000

" use many levels of undo
set undolevels=10000

set wildignore=*.swp,*.bak,*.bckp,*.pyc,*.class

" change the terminal's title
set title

" don't beep
set visualbell
set noerrorbells

" No backup files
set nobackup
set noswapfile
set nowritebackup 

" window behaviour.
set winminheight=0      " Allow windows to get fully squashed

"
" Switch between windows, maximizing the current window
"
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_ 

" create new vertical split and move to it
nnoremap <leader>w <C-w>v<C-w>l 

" create new vertical split and move to it
nnoremap <leader>w <C-w>v<C-w>l

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" setting wordwrap 
set formatoptions+=l
set lbr

" Setting some shortcut
noremap <leader>tg :CommandT ~/git/<CR>
noremap <leader>th :CommandT ~<CR>
noremap <leader>ts :CommandT ~/git/system-config/<CR>

" status line . From the peepcode vim screencast
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
