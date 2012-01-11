"" .vimrc
""
"" Ian Halliday
"" ianwjhalliday
""
"" Jan 8 2012
""

set nocompatible                    " no legacy vi compatibility
syntax enable
colorscheme desert
set encoding=utf-8                  " note utf-8 is forced in MacVim
set showcmd                         " display incomplete commands
filetype plugin indent on           " load file type plugins + identation
set noautoindent                    " Do I really want this?
set smartindent                     " Do I really want this?
set backup                          " Do I really want this?
set hidden                          " Allow backgrounding buffers w/o writing them and remember marks/undo for them

"" Editor Visuals
set guicursor=n:blinkon0            " turn cursor blinking off in normal mode
set number                          " show line numbers
set ruler                           " show line, column position of cursor
set showmatch                       " flash matching brackets during typing

"" Whitespace
set nowrap                          " don't wrap lines
set tabstop=4 shiftwidth=4          " a tab is four spaces
set expandtab                       " use spaces, not tabs
set backspace=indent,eol            " backspace through everything in insert mode except starting point

"" Searching
set hlsearch                        " highlight matches
set incsearch                       " incremental searching
set ignorecase                      " searches are case insensitive...
set smartcase                       " ... unless they contain at least one capital letter

"" Hidden characters
set list                            " show invisible characters
set listchars=""                    " reset the listchars
set listchars=tab:>.                " a tab should display as ">..."
set listchars+=trail:.              " strailing whitespace as "."
set listchars+=extends:>            " ">" shown in last column when line extends past screen (nowrap)
set listchars+=precedes:<           " "<" shown in first column when line extends past screen (nowrap)
