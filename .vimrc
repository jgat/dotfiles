" Jackson Gatenby 2011

set nocompatible

" Mouse control
set mouse=a

" Set super-cool search options
set hlsearch
set incsearch
set ignorecase

" Lightens text for dark background
set background=dark

" Show semi-complete commands
set showcmd

" Autoindent!
set autoindent

" Settings for list mode. 'Cause, why not?
set listchars=tab:[-,trail:_,extends:>,precedes:<
set list

set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

" Wrapping is ugly. Maybe?
set nowrap

syntax on

set foldmethod=indent
set foldlevel=100

set nu
set ruler

" Python
let python_highlight_all = 1

" Show trailing whitepace and spaces before a tab:
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

if exists('+colorcolumn')
  set colorcolumn=79
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)
endif

" set tabstops differently for Makefiles
autocmd FileType make set noexpandtab shiftwidth=8 sts=8
