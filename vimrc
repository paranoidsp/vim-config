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

" Let modified buffers be hidden when abandoned.
set hidden

" Hide mouse pointer while typing
set mousehide
set mousemodel=popup

" Better modes.  Remeber where we are, support yankring
set viminfo=!,'100,\"100,:20,<50,s10,h,n~/.viminfo

" Code Folding, everything folded by default
set foldmethod=indent
set foldlevel=99
set foldenable

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
"set relativenumber
set number

" Set persistent undo (v7.3 only)
set undodir=~/.vim/undodir
set undofile
" creates an .un file to save the undo changes for later. Extremely useful

" use normal regexes
noremap / /\v
vnoremap / /\v

" apply substitutions globally by default
"set gdefault


" map leader key to something more usable
let mapleader=","

" Quickly edit/reload the vimrc file
" nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" mapping jj to esc
inoremap jj <ESC>

" Setting line number
"set number

"# Toggle line numbers and fold column for easy copying:
"nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" don't jwrap lines
" set nowrap

" a tab is four spaces
set tabstop=4

" save on losing focus
"au FocusLost * :wa

" allows backspacing over everything in insert mode
set backspace=indent,eol,start

" always set autoindenting on
set autoindent

" copy the previous indentation on autoindenting
set copyindent

" always show line numbers
"set number

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

" Left/Right arrow keys change buffers in all modes
noremap <Left> <Esc>:bp<CR>
inoremap <Left> <Esc>:bp<CR>
nnoremap <Left> <Esc>:bp<CR>
vnoremap <Left> <Esc>:bp<CR>

noremap <Right> <Esc>:bn<CR>
inoremap <Right> <Esc>:bn<CR>
nnoremap <Right> <Esc>:bn<CR>
vnoremap <Right> <Esc>:bn<CR>

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
"set list
set listchars=tab:▸\ ,eol:¬

" save on losing focus
"au FocusLost * :wa

if has('gui_running')
    set background=light
else
    set background=dark
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

" syntax highlighting.
if has("gui_running")
   "colorscheme vividchalk
   "colorscheme blackboard
   colorscheme base16-default 
else
    colorscheme koehler
    "colorscheme mustang
"export TERM="xterm-256color"
    "colorscheme solarized
endif

let g:solarized_termtrans=1
set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"colorscheme solarized

" The PC is fast enough, do syntax highlight syncing from start
"autocmd BufEnter * :syntax sync fromstart

" Automatically load files if they are changed on the disk.
" Does nothing if the file is deleted.
set autoread

"  ********************************  History stuff

" remember a lot more commands
set history=100000

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
"
"nnoremap <leader>w <C-w>v<C-w>l

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

" Setting some shortcuts
nnoremap <leader>tg :CommandT ~/git/<CR>
nnoremap <leader>th :CommandT ~<CR>
nnoremap <leader>ts :CommandT ~/git/system-config/<CR>
nnoremap <leader>tj :CommandT ~/git/lit/journal/<CR>
nnoremap <leader>m <Esc>:CommandTBuffer<CR>
nnoremap <leader>t <Esc>:Rooter<CR><Esc>:CommandT<CR>
let g:CommandTMaxFiles=200000
let g:CommandTMaxCachedDirectories=0
let g:CommandTScanDotDirectories=1
let g:CommandTMaxDepth=30

function! CWD()
    let curdir = substitute(getcwd(), '/home/mnazim', "~/", "g")
    return curdir
endfunction

" status line . From the peepcode vim screencast
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
" From mnazim
set statusline=[%l,%v\ %P%M][CWD:\ %{CWD()}][FILE:\ %f]\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}\ %#warningmsg#%{SyntasticStatuslineFlag()}%*

" Adding keybinding for gundo
nnoremap <F5> :GundoToggle<CR>

" Supertab config
let g:SuperTabDefaultCompletionType = "context"

" Disabling toolbar and scrollbar and the menubar
set guioptions-=T
set guioptions-=m
set guioptions-=r

" Disable the stupid pydoc preview window for the omni completion
set completeopt-=preview

" Disable the blinking cursor.
set gcr=a:blinkon0

" Highlight current line 
if has("gui_running")
  set cursorline
endif

set ttyfast

" NERDtree on <leader>n
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
  
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

" Powerline setup
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
if &t_Co >= 256 || has("gui_running")
    let g:Powerline_symbols = 'fancy'
endif

" mapping to toggle lists
nmap <leader>l :set list<CR>

" Map ,e to esc
vnoremap <leader>e <ESC><ESC>

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

"" Automatic save/load sessions
"function! MakeSession()
  "let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  "if (filewritable(b:sessiondir) != 2)
    "exe 'silent !mkdir -p ' b:sessiondir
    "redraw!
  "endif
  "let b:filename = b:sessiondir . '/session.vim'
  "exe "mksession! " . b:filename
"endfunction

"function! LoadSession()
  "let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  "let b:sessionfile = b:sessiondir . "/session.vim"
  "if (filereadable(b:sessionfile))
    "exe 'source ' b:sessionfile
  "else
    "echo "No session loaded."
  "endif
"endfunction
"au VimEnter * nested :call LoadSession()
"au VimLeave * :call MakeSession()

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <leader>ct :tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" Insert new line without entering insert mode.
map <S-Enter> O<Esc>j
map <CR> o<Esc>k

" Insert semicolon at the end of the line
inoremap <leader>cl <Esc>A;<Esc>
noremap <leader>cl <Esc>A;<Esc>

" Mapping for rooter.
nnoremap <leader>r :Rooter<CR>

" Telling vim not to worry, I use two spaces.
set cpo+=J
