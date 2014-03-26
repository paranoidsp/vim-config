" This must be first, because it changes other options as side effect
set nocompatible

"if s:is_windows
  "" Exchange path separator.
  "set shellslash
"endif
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
nnoremap <leader>ej <C-w><C-v><C-l>:!gvims $journal<cr>
nnoremap <leader>ea <C-w><C-v><C-l>:e ~/.config/awesome/awesome-laptop/rc.lua<cr>

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
au FocusLost * wa!

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
set pastetoggle=<F3>

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
set colorcolumn=80

" show invisible chars
"set list
set listchars=tab:▸\ ,eol:¬

" save on losing focus
"au FocusLost * :wa

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
    colorscheme base16-monokai
endif
if &t_Co >= 256
    colorscheme base16-monokai
endif
if has("gui_running")
   "colorscheme blackboard
   "colorscheme base16-default 
   colorscheme badwolf
endif

let g:solarized_termtrans=1
set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"colorscheme solarized


" Customizing badwolf theme
let g:badwolf_darkgutter = 1
" Make the tab line darker than the background.
let g:badwolf_tabline = 0

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

" Adding keybinding for gundo
nnoremap <F5> :GundoToggle<CR>

" Supertab config
let g:SuperTabDefaultCompletionType = "context"

" Disabling toolbar and scrollbar and the menubar
set guioptions-=T
set guioptions-=m
set guioptions-=r
set ghr=1
set go-=L

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
nnoremap <leader>nc :NERDTreeTabsClose<CR>
nnoremap <leader>m :NERDTree<CR>
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
nnoremap <Leader>t    :tabnew<CR>
nnoremap <leader>ct :tabclose<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <Leader>t  <Esc>:tabnew<CR>
"let g:miniBufExplMapCTabSwitchWindows = 1
" The above sets C-tab and C-S-Tab to shift tabs.

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
set guifont=Inconsolata\ Medium\ 12
"
" Powerline setup
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
if &t_Co >= 256 || has("gui_running")
    let g:Powerline_symbols = 'fancy'
endif

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

autocmd BufNewFile,BufRead *.journal inoremap <buffer> <CR> <Esc>:r! date +\%H\%M<CR>A: \|    <Esc>i

"Markdown to HTML  
nnoremap <leader>md :%!Markdown.pl --html4tags <cr>


" Ctrlp mappings.
let g:ctrlp_map = '<leader>c'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
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

"---------------- Neocomplcache completion settings
" Enable neocomplcache at startup
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" I'm not too sure about this.
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
        \ }
    "\ 'scheme' : $HOME.'/.gosh_completions'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'


" ------------------------ neosnippets config
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'


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

" ruby standard 2 spaces, always
au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2
au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2 

" Mappings to quickly change colorschemes
nnoremap <leader>cm <Esc>:colorscheme monokai<CR>
nnoremap <leader>cl <Esc>:colorscheme molokai<CR>
nnoremap <leader>cb <Esc>:colorscheme badwolf<CR>

" Sparkup execute key
"g:sparkupExecuteMapping = '<C-d>'
"g:sparkupExecuteMapping = '<C-d>'

