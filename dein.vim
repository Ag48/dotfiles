if &compatible
  set nocompatible
endif
set runtimepath^=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand("$HOME/.vim/dein"))


call dein#add('Shougo/dein.vim')
"call dein#add('Shougo/vimproc.vim', 'make')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/vimproc.vim', {
 \ 'build': {
 \     'windows' : 'tools\\update-dll-mingw',
 \     'cygwin'  : 'make -f make_cygwin.mak',
 \     'mac'     : 'make -f make_mac.mak',
 \     'linux'   : 'make',
 \     'unix'    : 'gmake',
 \    },
 \ })

"set one-key comment-in & out
call dein#add('tyru/caw.vim.git')

" NeoBundle 'Yggdroot/indentLine'
" NeoBundle 'cocopon/iceberg.vim'
call dein#add('Shougo/neocomplcache.git')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet-snippets.git')
call dein#add('Shougo/neosnippet.git')
" NeoBundle 'Shougo/unite.vim.git'
call dein#add('Shougo/vimproc.git')
call dein#add('Shougo/vimshell', {'rev': '3787e5'})
call dein#add('altercation/vim-colors-solarized.git')
call dein#add('mattn/emmet-vim.git')
call dein#add('othree/eregex.vim.git')
" NeoBundle 'scrooloose/syntastic.git'
call dein#add('thinca/vim-quickrun.git')
call dein#add('thinca/vim-ref.git')
call dein#add('tpope/vim-repeat.git')
call dein#add('tpope/vim-surround.git')
call dein#add('hotchpotch/perldoc-vim')
call dein#add('Shougo/neosnippet')
call dein#add('jceb/vim-hier')
" call dein#add('osyo-manga/shabadou.vim')
" call dein#add('osyo-manga/vim-watchdogs')
" call dein#add('qtmplsel.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('thinca/vim-quickrun')
"call dein#add('vim-scripts/twilight')
call dein#add('vimtaku/hl_matchit.vim')
call dein#add('w0ng/vim-hybrid')
call dein#add('itchyny/lightline.vim')
call dein#add('kannokanno/previm.git')
call dein#add('tpope/vim-fugitive')
call dein#add('osyo-manga/vim-anzu')
call dein#add('majutsushi/tagbar')
" call dein#add('vim-scripts/taglist.vim')
if has('nvim')
  call dein#add('Shougo/deoplete.nvim', {
        \ "autoload": {"insert": 1}})
endif
call dein#add('lilydjwg/colorizer')

call dein#end()

filetype plugin indent on
let g:dein#types#git#clone_depth = 1
if dein#check_install()
  call dein#install()
endif

nmap <Leader>c <Plug>(caw:hatpos:toggle)
vmap <Leader>c <Plug>(caw:hatpos:toggle)


" if dein#check_install()
"   call dein#install()
" endif
