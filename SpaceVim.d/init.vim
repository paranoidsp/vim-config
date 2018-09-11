" Dark powered mode of SpaceVim, generated by SpaceVim automatically.
let g:spacevim_enable_debug = 1
call SpaceVim#layers#load('autocomplete', {
			\ 'auto-completion-return-key-behavior' : 'complete',
			\ 'auto-completion-tab-key-behavior' : 'smart',
			\ 'auto-completion-complete-with-key-sequence' : 'nil',
			\ 'auto-completion-complete-with-key-sequence-delay' : 0.1,
			\ })


call SpaceVim#layers#load('checkers')
call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('lang#c')
call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#lua')
call SpaceVim#layers#load('lang#perl')
call SpaceVim#layers#load('lang#php')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#tmux')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#json')
call SpaceVim#layers#load('lang#haskell')
call SpaceVim#layers#load('colorscheme')
call SpaceVim#layers#load('sudo')
call SpaceVim#layers#load('shell',
        \ {
        \ 'default_position' : 'top',
        \ 'default_height' : 30,
        \ }
        \ )

" Set leader
let mapleader   = ","
let g:mapleader = ","

let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_leader_guide_run_map_on_popup = 0
let g:spacevim_enable_debug = 1
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 1
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
if executable('vimlint')
	call add(g:neomake_vim_enabled_makers, 'vimlint')
endif
if executable('vint')
	call add(g:neomake_vim_enabled_makers, 'vint')
endif
if has('python3')
	let g:ctrlp_map = ''
	nnoremap <silent> <C-p> :Denite file_rec<CR>
endif

" Let's save undo info!
if !isdirectory($HOME."/.vim")
	call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undodir")
	call mkdir($HOME."/.vim/undodir", "", 0700)
endif
set undodir=~/.vim/undo-dir//

if !isdirectory($HOME."/.vim/swap")
	call mkdir($HOME."/.vim/swap", "", 0700)
endif
set directory=~/.vim/swap//

if !isdirectory($HOME."/.vim/backup")
	call mkdir($HOME."/.vim/backup", "", 0700)
endif
set backupdir=~/.vim/backup//

if !isdirectory($HOME."/.vim/views")
	call mkdir($HOME."/.vim/views", "", 0700)
endif
set viewdir=~/.vim/views//

set undofile
set undolevels=100000
set undoreload=100000
set backup

" Save folds, cursor etc
augroup CrisiViews
	au BufWinLeave *.* silent! mkview  "make vim save view (state) (folds, cursor, etc)
	au BufWinEnter *.* silent! loadview "make vim load view (state) (folds, cursor, etc)
augroup END

" paste toggle
set pastetoggle=<F12>

" fix q recording
nnoremap Q q

" code indent
let g:spacevim_default_indent = 2
let g:spacevim_max_column     = 80


" set statusline config
let g:spacevim_statusline_separator = 'arrow'



let g:spacevim_windows_leader = 's'

" set SpaceVim colorscheme
" let g:spacevim_colorscheme = 'crisibeans'
" let g:spacevim_colorscheme_bg = 'dark'
let g:spacevim_colorscheme = 'one'
" let g:spacevim_colorscheme = 'crisibeans'
let g:spacevim_colorscheme_bg = 'dark'

let g:vim_json_syntax_conceal = 0

" plugin configurations

let g:spacevim_custom_plugins = [
			\ ['csexton/trailertrash.vim'],
			\ ['crisidev/crisibeans'],
			\ ['Shougo/vimproc.vim', {'do' : 'make'}],
			\ ['nbouscal/vim-stylish-haskell', {'on_ft': 'haskell'}],
			\ ['vim-scripts/dbext.vim',{'on_ft': 'sql'}],
			\ ['eagletmt/ghcmod-vim', {'on_ft': 'haskell'}],
			\ ]


set wildignore+=/tmp/*,*.so,*.swp,*.zip,*.git,*.hi,*.stack-work

" rainbow parenthesis
" augroup CrisiParentheses
	" au VimEnter * :RainbowParentheses
" augroup END

" markdown preview
let g:mkdp_auto_open = 1
let g:mkdp_path_to_chrome = "/bin/google-chrome-stable"

" turn off highlight after a search
nnoremap <silent> <Leader>/ :nohlsearch <CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.pyc

" Tab settings to insert spaces instead of tabs
" and each tab is 2 spaces
set softtabstop=2
set tabstop=2 shiftwidth=2 expandtab
%retab

set formatoptions+=t

set foldmethod=indent

set magic "Set magic on for regex"

let g:spacevim_statusline_separator = 'nil'

vnoremap / y/<C-R>"<CR>


" Case insensitive search
:set ignorecase
:set smartcase

" display quotes on json
let g:vim_json_syntax_conceal = 0 
autocmd filetype json set conceallevel=0

" Setting expand cr for delimitmate
let g:delimitMate_expand_cr = 2
