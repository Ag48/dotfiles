
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
syntax on 
set laststatus=2
set foldmethod=indent
set list listchars=tab:\¦\ 

"set tab configuration
set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2
set tabstop=2
"set compiler
autocmd FileType perl :compiler perl

"set vimdiff option
set diffopt=iwhite


"set color scheme for vimdiff
" highlight DiffAdd    cterm=bold ctermbg=4
" highlight DiffDelete cterm=bold ctermbg=3
" highlight DiffChange cterm=bold ctermbg=9
" highlight DiffText   cterm=bold ctermbg=1

"set matchit.vim
source /usr/share/vim/vim74/macros/matchit.vim


"set neobundle
source ~/.neobundle


NeoBundle 'vim-scripts/twilight'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'git://github.com/tpope/vim-surround.git'
NeoBundle 'qtmplsel.vim'
NeoBundle 'git://github.com/tpope/vim-repeat.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/neocomplcache-snippets-complete.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/Shougo/vimproc.git'
NeoBundle 'git://github.com/Shougo/vimshell.git'
NeoBundle 'thinca/vim-quickrun'
" NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/mattn/emmet-vim.git'
" NeoBundle 'git://github.com/c9s/perlomni.vim.git'
" NeoBundle 'git://github.com/altercation/vim-colors-solarized.git'
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
NeoBundle 'osyo-manga/shabadou.vim'
NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle 'jceb/vim-hier'
NeoBundle 'vimtaku/hl_matchit.vim'


call neobundle#end()

" Required:
filetype plugin indent on

"$HOME If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"set cursorline stronger
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray guibg=darkgray guifg=white
let g:hybrid_use_Xresources = 1
colorscheme hybrid

" using watchdogs.vim
let g:quickrun_config = {}
call watchdogs#setup(g:quickrun_config)
"" for automatic syntax checker
let g:watchdogs_check_BufWritePost_enable = 1

" using verilog-indent
let b:verilog_indent_modules = 1
let b:verilog_indet_width = 3



