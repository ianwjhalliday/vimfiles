"" .vimrc
""
"" Ian Halliday
"" ianwjhalliday
""

""" Initialize pathogen
call pathogen#infect()


""" Configuration

"" General
set nocompatible                    " no legacy vi compatibility
syntax enable
colorscheme desert
set encoding=utf-8                  " note utf-8 is forced in MacVim
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
set showcmd                         " display incomplete commands
set laststatus=2                    " always show status line, even if only one window is open

"" Whitespace
set nowrap                          " don't wrap lines
set tabstop=4 shiftwidth=4          " a tab is four spaces
set expandtab                       " use spaces, not tabs
" I used to turn off backspace=start but it turns out this is useful to have
" when you're copying C/C++ function declarations to a source file to
" implmement them and you then want to hit "A<bs><cr>{ ... }"
set backspace=indent,eol,start      " backspace through everything in insert mode

"" Searching
set hlsearch                        " highlight matches
set incsearch                       " incremental searching
set ignorecase                      " searches are case insensitive...
set smartcase                       " ... unless they contain at least one capital letter

"" Hidden characters
set list                            " show invisible characters
set listchars=""                    " reset the listchars
set listchars=tab:▸\                " a tab should display as "▸    "
set listchars+=trail:.              " trailing whitespace as "."
" set listchars+=eol:¬                " end of line shows as "¬"
" set listchars+=extends:>            " ">" shown in last column when line extends past screen (nowrap)
" set listchars+=precedes:<           " "<" shown in first column when line extends past screen (nowrap)


""" Key bindings

"" Leader remapping (swap , and \)

" Use , instead of \ as leader
let mapleader=","
" Keep , functionality available in \
noremap <Bslash> ,

"" Quickly open vimrc and gvimrc with ,ev and ,eg
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC
nnoremap <leader>eg <C-w><C-v><C-l>:e $MYGVIMRC

"" <esc> is awkward to use to get out of insert mode so
"" let's use kj instead.  How often does kj get typed?
inoremap kj <esc>

" Map enter to clear highlight search in normal mode
nnoremap <cr> :nohlsearch<cr>

" Tab is easier to press than %
nnoremap <tab> %
" (Ctrl+I does same as tab used to)
vnoremap <tab> %


"" Window management mappings

" Open new vertical split and switch to it with ,w
nnoremap <leader>w <C-w>v<C-w>l

" Navigate windows using C-hjkl instead of C-w C-hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"" Markdown specific mappings (should be triggered only for .md files?)

" These five mappings will take the current line and turn it into a
" header with the corresponding level 1 through 5.  1 and 2 prefer
" underline style, while the rest must be hash mark style.
nnoremap <leader>1 YpVr=
nnoremap <leader>2 YpVr-
nnoremap <leader>3 I### <esc>A ###<esc>
nnoremap <leader>4 I#### <esc>A ####<esc>
nnoremap <leader>5 I##### <esc>A #####<esc>
