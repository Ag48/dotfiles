
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
set tabstop=3
set shiftwidth=3
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



