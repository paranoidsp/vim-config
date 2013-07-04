let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git/workspace1/jsoupTest/src/hotel_reserve
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +399 ~/.vimrc
badd +1 NERD_tree_1
badd +2 ~/.offlineimaprc
badd +1 /media/cc3ee7ff-9de0-4cff-a989-8670a65c555a/home/paranoidsp/git/lit/journal/2013-07-03
badd +36 ~/.zsh_aliases
args ~/.zsh_aliases
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
file -MiniBufExplorer-
tabedit ~/.vimrc
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 0 + 19) / 38)
exe '2resize ' . ((&lines * 35 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 85 + 84) / 168)
exe '3resize ' . ((&lines * 35 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 82 + 84) / 168)
argglobal
enew
file -MiniBufExplorer-
wincmd w
argglobal
let s:l = 284 - ((21 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
284
normal! 023l
wincmd w
argglobal
edit /media/cc3ee7ff-9de0-4cff-a989-8670a65c555a/home/paranoidsp/git/lit/journal/2013-07-03
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 0 + 19) / 38)
exe '2resize ' . ((&lines * 35 + 19) / 38)
exe 'vert 2resize ' . ((&columns * 85 + 84) / 168)
exe '3resize ' . ((&lines * 35 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 82 + 84) / 168)
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
