
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
"set line number
set number

set history=50		" keep 50 lines of command line history
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
"set property
syntax on 
set laststatus=2
set foldmethod=syntax
set list listchars=tab:\¦\ 

"set tab configuration
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set formatoptions-=r
set formatoptions-=o

"set compiler
autocmd FileType perl :compiler perl

"set cursorline stronger
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray guibg=darkgray guifg=white



"set neobundle
source ~/.neobundle

"set one-key comment-in & out
NeoBundle 'git://github.com/tyru/caw.vim.git'
" nmap <Leader>c <Plug>(caw:i:toggle)
" vmap <Leader>c <Plug>(caw:i:toggle)
nmap <C-c> <Plug>(caw:i:toggle)
vmap <C-c> <Plug>(caw:i:toggle)

NeoBundle 'git://github.com/tpope/vim-surround.git'
NeoBundle 'qtmplsel.vim'
NeoBundle 'git://github.com/tpope/vim-repeat.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/neocomplcache-snippets-complete.git'
 NeoBundle 'git://github.com/Shougo/unite.vim.git'
 NeoBundle 'git://github.com/Shougo/vimproc.git'
 NeoBundle 'git://github.com/Shougo/vimshell.git'
 NeoBundle 'git://github.com/thinca/vim-quickrun.git'
 " NeoBundle 'git://github.com/mattn/zencoding-vim.git'
  NeoBundle 'git://github.com/mattn/emmet-vim.git'
 " NeoBundle 'git://github.com/c9s/perlomni.vim.git'
 NeoBundle 'git://github.com/altercation/vim-colors-solarized.git'
 NeoBundle 'git://github.com/Lokaltog/vim-powerline.git'
 NeoBundle 'git://github.com/scrooloose/syntastic.git'
 NeoBundle 'git://github.com/othree/eregex.vim.git'
 "NeoBundle 'L9'
 "NeoBundle 'FuzzyFinder'
 "NeoBundle 'QuickBuf'
 NeoBundle 'git://github.com/thinca/vim-ref.git'
 "NeoBundle 'alpaca-tc/auto-pairs'
 NeoBundle 'Yggdroot/indentLine'
 NeoBundle 'scrooloose/nerdtree'
