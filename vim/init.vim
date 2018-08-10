"   __  __ _ _____ _________
"   \ \ | |_|     V  __/  __|
"    \ \| | | | | | |  | [__
" [_] \___|_|_|_|_|_|  \____|

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
"set line number
set number

set history=50 " keep 50 lines of command line history
set showcmd " display incomplete commands
set incsearch " do incremental searching
"set property
set foldmethod=indent
set shiftwidth=2
set list listchars=tab:\¦\ 

"set tab configuration 
set autoindent 
set smartindent
set expandtab
set softtabstop=2
set tabstop=2

"set vimdiff option
set diffopt=iwhite

" reset augroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{
" auto-install for dein
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" load plugins and generate cache
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir, [$MYVIMRC, s:toml_file])
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" auto-install for uninstalled other plugins
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
" }}}

source ~/.dein.vim

" colorscheme
set background=dark
colorscheme PaperColor
syntax enable

set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

" setting to open file with vertical window
nnoremap gs :vertical wincmd f<CR>

" set one-key comment-in & out
noremap <C-c> <Plug>(caw:hatpos:toggle)
tnoremap <silent> <C-n> <C-\><C-n>

" set a plugin of velirog-mode in Emacs
" source  ~/.config/nvim/others/verilog_emacsauto.vim

"set compiler
autocmd BufNewFile *.sh 0r $HOME/.vim/template/sh-temp
autocmd BufNewFile *.vhd 0r $HOME/.vim/template/vhd_tmp.vhd
autocmd BufNewFile *.v.in 0r $HOME/.vim/template/v_tmp.v
autocmd BufNewFile *.html 0r $HOME/.vim/tmplate/hdml_tmp.html
autocmd BufNewFile,BufRead *.tex setf plaintex
autocmd BufNewFile,BufRead  *.vh setf verilog

" set NERDTree
function s:MoveToFileAtStart()
  call feedkeys("\<Space>")
  call feedkeys("\s")
  call feedkeys("\l")
endfunction
autocmd VimEnter *  execute 'NERDTree' | call s:MoveToFileAtStart()
" spell check setup
"set spellang=en, cjk
