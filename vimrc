" Updated to mac
" Will clean up in next commit
" This must be first, because it changes other options as side effect
set nocompatible
set encoding=utf-8
set ambiwidth=single

"if s:is_windows
  "" Exchange path separator.
  "set shellslash
"endif
" enable extended matching for %
runtime macros/matchit.vim

syntax on
filetype plugin indent on

" Install vim plug
if !filereadable(expand('~/.vim/autoload/plug.vim'))
  echo "Installing Vim-Plug\n"
  execute "!" . 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" Adding a vim-plug section for the move to Plug
call plug#begin('~/.vim/plugged')

" Easy align
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }
Plug 'reinh/vim-makegreen'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-rooter'
Plug 'kien/rainbow_parentheses.vim'
Plug 'chriskempson/base16-vim'
Plug 'vim-scripts/Zenburn'
Plug 'lsdr/monokai'
Plug 'tomasr/molokai'
Plug 'plasticboy/vim-markdown'
Plug 'kien/ctrlp.vim'
Plug 'mattn/gist-vim'
Plug 'flazz/vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'bling/vim-bufferline'
Plug 'airblade/vim-gitgutter'
Plug 'sjl/badwolf'
Plug 'bitc/vim-hdevtools', {'for': ['haskell']}
Plug 'tarekbecker/vim-yaml-formatter', {'for': ['yaml']}
Plug 'Yggdroot/indentLine'
Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug'] }
Plug 'digitaltoad/vim-pug', { 'for': ['jade', 'pug'] }
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ujihisa/unite-colorscheme'
Plug 'godlygeek/csapprox'

" Initialize plugin system
call plug#end()

" Let modified buffers be hidden when abandoned.
set hidden

" Set vim to copy to clipboard
set clipboard^=unnamed,unnamedplus


" Hide mouse pointer while typing
set mousehide
set mousemodel=popup

" Better modes.  Remember where we are, support yankring
set viminfo=!,'10000,\"10000,%,:200000,<5000,s5000,h,@20000,'0,r/tmp,n~/.viminfo
let g:yankring_max_history = 100000

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
set wildmode=list,longest,full
set ruler
set laststatus=2
set scrolloff=3
set updatetime=250

" Highlight current line
set cursorline

" Set omnicomplete function
set omnifunc=syntaxcomplete#Complete


" Magic on for regex
set magic

" strip all trailing spaces from a file
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>

" keymap for ack
nnoremap <leader>a :Ack

" sets every line number to be relative to the present. Maybe useful
"set relativenumber
set updatetime=250
set number

" Set persistent undo (v7.3 only)
set undodir=~/.vim/undodir
set undofile
set undolevels=10000
" creates an .un file to save the undo changes for later. Extremely useful


set display=lastline    " Show as much as possible of a wrapped last line, not just "@".

" use normal regexes
noremap / /\v
vnoremap / /\v

" apply substitutions globally by default
"set gdefault


" map leader key to something more usable
let mapleader=","

" Quickly edit/reload the vimrc file
" nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so ~/.vimrc<CR>
"autocmd! BufWritePost ~/.vimrc nested :source ~/.vimrc
autocmd!  BufWritePost ~/.vimrc nested
        \ source ~/.vimrc | AirlineRefresh

" This is to automatically update vimrc when it is edited.
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>ej <C-w><C-v><C-l>:!gvims $journal<cr>
nnoremap <leader>ea <C-w><C-v><C-l>:e ~/.config/awesome/awesome-laptop/rc.lua<cr>

" mapping jj to esc
"inoremap jj <ESC>
" mapping fd to esc
inoremap fd <ESC>

" Setting line number
"set number

"# Toggle line numbers and fold column for easy copying:
"nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" don't jwrap lines
" set nowrap

" a tab is four spaces
set tabstop=4

" save on losing focus
au BufLeave,FocusLost * silent! wall
set autowriteall " Autowrite while switching buffers or leaving vim

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

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
set noshowmatch

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
set pastetoggle=<F3>

" enabling mouse
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

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
noremap <C-S-tab> <Esc>:bp<CR>
inoremap <C-S-tab> <Esc>:bp<CR>
nnoremap <C-S-tab> <Esc>:bp<CR>
vnoremap <C-S-tab> <Esc>:bp<CR>
noremap <Left> <Esc>:bp<CR>
inoremap <Left> <Esc>:bp<CR>
nnoremap <Left> <Esc>:bp<CR>
vnoremap <Left> <Esc>:bp<CR>

noremap <Right> <Esc>:bn<CR>
inoremap <Right> <Esc>:bn<CR>
nnoremap <Right> <Esc>:bn<CR>
vnoremap <Right> <Esc>:bn<CR>
noremap <C-tab> <Esc>:bn<CR>
inoremap <C-tab> <Esc>:bn<CR>
nnoremap <C-tab> <Esc>:bn<CR>
vnoremap <C-tab> <Esc>:bn<CR>

" setting copy paste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>a
vmap <C-C> "+y
noremap <Leader>p "0p
noremap <Leader>P "0P
vnoremap <Leader>p "0p

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" use normal regexes
nnoremap / /\v
vnoremap / /\v

" clear hilighted searches
noremap <leader><space> :noh<cr>

" make tab match bracket pairs instead of %
"noremap <tab> %

" handling long lines
"set textwidth=79
set formatoptions=qrnl
set colorcolumn=80

" show invisible chars
set list
"set listchars=tab:▸\ ,eol:¬
set listchars=tab:»·,trail:·
set listchars=tab:▸\ ,trail:·

"if has('gui_running')
    "set background=light
"else
    "set background=dark
"endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

" syntax highlighting.
if &t_Co < 256
    colorscheme onedark
endif
if &t_Co >= 256
    colorscheme onedark
endif
if has("gui_running")
   "colorscheme blackboard
   "colorscheme base16-default
   colorscheme solarized
endif

let g:solarized_termtrans=1
set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"colorscheme solarized


" Customizing badwolf theme
"let g:badwolf_darkgutter = 1
" Make the tab line darker than the background.
"let g:badwolf_tabline = 0

" The PC is fast enough, do syntax highlight syncing from start
"autocmd BufEnter * :syntax sync fromstart

" Automatically load files if they are changed on the disk.
" Does nothing if the file is deleted.
set autoread

"  ********************************  History stuff

" remember a lot more commands
set history=1000

" use many levels of undo
set undolevels=10000
set undoreload=10000

set wildignore=*.swp,*.bak,*.bckp,*.pyc,*.class
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

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
"nnoremap <leader>w <C-w>v<C-w>l

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
"nnoremap <leader>tg :CommandT ~/git/<CR>
"
"nnoremap <leader>th :CommandT ~<CR>
"nnoremap <leader>ts :CommandT ~/git/system-config/<CR> nnoremap <leader>tj :CommandT ~/git/lit/journal/<CR>
"nnoremap <leader>m <Esc>:CommandTBuffer<CR>
"nnoremap <leader>t <Esc>:Rooter<CR><Esc>:CommandT<CR>
"let g:CommandTMaxFiles=200000
"let g:CommandTMaxCachedDirectories=0
"let g:CommandTScanDotDirectories=1
"let g:CommandTMaxDepth=30

"function! CWD()
    "let curdir = substitute(getcwd(), '/home/mnazim', "~/", "g")
    "return curdir
"endfunction

" status line . From the peepcode vim screencast
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
" From mnazim
"set statusline=[%l,%v\ %P%M][CWD:\ %{CWD()}][FILE:\ %f]\ %r%h%w\ (%{&ff})\ %{fugitive#statusline()}\ %#warningmsg#%{SyntasticStatuslineFlag()}%*

" Adding keybinding for UndoTree
nnoremap <F5> :UndotreeToggle<cr>



" Supertab config
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCrMapping = 0

" Disabling toolbar and scrollbar and the menubar
set guioptions-=T
set guioptions-=m
set guioptions-=r
set ghr=1
set go-=L

" Disable the stupid pydoc preview window for the omni completion
"set completeopt-=preview

" Disable the blinking cursor.
set gcr=a:blinkon0

" Highlight current line
if has("gui_running")
  set cursorline
endif

" Optimize for fast terminal connections
set ttyfast

" NERDtree on <leader>n
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>nc :NERDTreeTabsClose<CR>
nnoremap <leader>m :NERDTree<CR>
nnoremap <leader>f :NERDTreeFind<CR>
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']
let g:NERDTreeWinPos = "right"


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

" Insert new line without entering insert mode.
map <S-Enter> O<Esc>j
map <CR> o<Esc>k

" Insert semicolon at the end of the line
inoremap <leader>cl <Esc>A;<Esc>o
noremap <leader>cl <Esc>A;<Esc>o

" Mapping for rooter.
nnoremap <leader>r :Rooter<CR>

" Telling vim not to worry, I use two spaces.
set cpo+=J


" Setting font. The best font ever.
"set guifont=Inconsolata\ for\ Powerline\ Medium\ 10
"

" Insert the hours and minutes in 24- hour format for the journal
"nnoremap <C-t> <Esc>:r! date +\%H\%M\%S<CR>A:<CR><Tab>
"inoremap <C-t> <Esc>:r! date +\%H\%M\%S<CR>A:<CR><Tab>

" Insert the time at the beginning of each line. Only for the journal.
" Uncomment to map.
"inoremap <CR> <Esc>:r! date +\%H\%M\%S<CR>A: \|  <Esc>i
" Uncomment and apply the below to return to normal.
"inoremap <CR> <CR>

" If servername is journal, set the margin scheme.
"
"if v:servername == "journal"
    "inoremap <CR> <Esc>:r! date +\%H\%M\%S<CR>A: \|  <Esc>i
"endif

autocmd BufNewFile,BufRead *.journal.md inoremap <buffer> <CR> <Esc>:r! date +\%H\%M<CR>A: \|    <Esc>i

"Markdown to HTML
nnoremap <leader>md :%!Markdown.pl --html4tags <cr>
" Fixing markdown detection
au! BufRead,BufNewFile *.markdown set filetype=mkd
au! BufRead,BufNewFile *.md       set filetype=mkd
" Markdown code highlighting
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'haskell']

" Vim markdown concealing
" let g:vim_markdown_conceal = 0

" Ctrlp mappings.
let g:ctrlp_map = '<leader>c'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*\\vendor\\**
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|\v[\/]\.(git|hg|svn)$\|^vendor'

"let g:ctrlp_user_command = 'find %s -type f'
nnoremap <leader>ch <Esc>:CtrlP ~<CR>
nnoremap <leader>cg <Esc>:CtrlP ~/git<CR>
nnoremap <leader>cj <Esc>:CtrlP ~/git/lit/journal<CR>
nnoremap <leader>cs <Esc>:CtrlP ~/git/system-config<CR>
nnoremap <leader>b <Esc>:CtrlPBuffer<CR>
nnoremap <leader>u <Esc>:CtrlPMRUFiles<CR>
nnoremap <leader>a <Esc>:CtrlP<CR>
nnoremap <C-a> <Esc>:CtrlP<CR>

" Mapping for save file
nnoremap <C-s> <Esc>:w<CR>
inoremap <C-s> <Esc>:w<CR>a
nnoremap <space>fs <Esc>:w<CR>

" Auto refresh ctrlp when filesystem changes
" CtrlP auto cache clearing.
" ----------------------------------------------------------------------------
function! SetupCtrlP()
  if exists("g:loaded_ctrlp") && g:loaded_ctrlp
    augroup CtrlPExtension
      autocmd!
      autocmd FocusGained  * CtrlPClearCache
      autocmd BufWritePost * CtrlPClearCache
    augroup END
  endif
endfunction
if has("autocmd")
  autocmd VimEnter * :call SetupCtrlP()
endif

" Mapping for awesome syntax check.
"nnoremap <Leader>a <Esc>:! awesome --check ~/.config/awesome/awesome-laptop/rc.lua <CR>
" Mapping for save as root
nnoremap <Leader>g <Esc>:w ! sudo tee %<CR>a<CR>L<ESC>
cnoremap w!! %!sudo tee > /dev/null %


" This is to enable the tabline.
set guioptions-=e

" Make ctrlp load cache on startup.  This will make loading later very peaceful.
"call ctrlp#call( Ctrlp() ~/git

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
noh

" Indent width for ruby
autocmd filetype ruby set expandtab
autocmd filetype ruby set tabstop=2
autocmd filetype ruby set shiftwidth=2

" Indent width for javascript
autocmd filetype javascript set expandtab
autocmd filetype javascript set tabstop=2
autocmd filetype javascript set shiftwidth=2

" ruby standard 2 spaces, always
au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2
au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2

" Mappings to quickly change colorschemes
nnoremap <leader>cm <Esc>:colorscheme monokai<CR>
nnoremap <leader>cl <Esc>:colorscheme molokai<CR>
nnoremap <leader>cb <Esc>:colorscheme badwolf<CR>
nnoremap <leader>cs <Esc>:colorscheme solarized<CR>
nnoremap <leader>csd <Esc>:set background=dark<CR>
nnoremap <leader>csl <Esc>:set background=light<CR>

" Sparkup execute key
"g:sparkupExecuteMapping = '<C-d>'
"g:sparkupExecuteMapping = '<C-d>'

"inoremap <c-[> <BS>

" This is to swap caps with tilde.
set tildeop
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set spell

" Autosave journal files.
autocmd BufNewFile,BufReadPost *.md let g:auto_save=1
" Not sure if it's right, but will check and edit later.

" Comment boxes.
map ,co O#=========================================================================<CR>#<CR>#========================================================================<Esc>100\|Dkk100\|DjA

" Adding rubocop support for syntatastic
let g:syntastic_ruby_checkers = ['rubocop']
" Adding eslint support for syntatastic
let g:syntastic_javascript_checkers = ['eslint']

" Powerline setup
let g:powerline_pycmd = "py3"
"set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup
"let g:Powerline_symbols = 'fancy'
"if &t_Co >= 256 || has("gui_running")
    "let g:Powerline_symbols = 'fancy'
"endif


" ----------------------------
" vim-airline config
" ----------------------------
"let g:airline_powerline_fonts = 1
"let g:airline_theme='sol'
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#tmuxline#snapshot_file = "~/.tmuxline-color.conf"
"let g:airline_theme='cobalt'
"let g:airline_theme='zenburn'
"let g:airline_theme='papercolor'
"let g:airline_theme='papercolor'
let g:airline_theme='zenburn'
let g:airline_symbols_ascii = 1
"let g:airline_symbols.linenr = '␤'
let g:airline_symbols.maxlinenr = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
" ---------------------------

" Fix Cursor in TMUX
"if exists('$TMUX')
  "let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  "let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"else
  "let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  "let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"endif

" Don't copy the contents of an overwritten selection.
vnoremap p "_dP

" Bufferline should not echo to command bar
" Works
let g:bufferline_echo = 0
autocmd VimEnter *
\ let &statusline='%{bufferline#refresh_status()}'
    \ .bufferline#get_status_string()

" Highlight version control markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Haskell dev
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

" Syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
