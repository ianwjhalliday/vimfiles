"""" .vimrc
""""
"""" Ian Halliday
"""" ianwjhalliday (gmail)
""""
"""" Style guideline:  Use full names of commands for clarity to readership

""" Initialize pathogen
call pathogen#infect()


""" Configuration

"" General
set nocompatible                    " no legacy vi compatibility
syntax enable
set background=dark
colorscheme solarized
set encoding=utf-8                  " note utf-8 is forced in MacVim
filetype plugin indent on           " load file type plugins + identation
set hidden                          " Allow backgrounding buffers w/o writing them and remember marks/undo for them

"" Backup and Swap files
set backup                          " Do I really want this?
set backupdir=$TMPDIR,$TEMP,.       " Prefer temp dir for back up files over same dir as file
" Keep swap file directory to default but add $TMPDIR so that on windows there
" is a real working location for new buffer swap files (because C:\tmp doesn't
" exist generally).
set dir+=$TMPDIR,$TEMP

"" Editor Visuals
set guicursor=n:blinkon0            " turn cursor blinking off in normal mode
set number                          " show line numbers
set ruler                           " show line, column position of cursor
set showmatch                       " flash matching brackets during typing
set showcmd                         " display incomplete commands
set laststatus=2                    " always show status line, even if only one window is open

"" Formatting
set nowrap                          " don't wrap lines
set noautoindent                    " Do I really want this?
set smartindent                     " Do I really want this?
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

""" File type auto configurations

"" These types are xml
autocmd BufNewFile,BufRead *.vsdconfigxml,*.*proj,*.props,*.targets set filetype=xml

" Quicky exit help by pressing q instead of :q<CR>
autocmd BufRead *.txt if &buftype=='help'|nmap <buffer> q <C-w>c|endif

"" Vimwiki
" I prefer two spaces in tabs for vimwiki lists, folding requires this to work
" correctly.
autocmd BufNewFile,BufRead *.wiki set tabstop=2 shiftwidth=2

""" Variable options

let g:vimwiki_folding = 1
let g:vimwiki_fold_lists = 1

""" Key bindings

"" Solarized command to alternate between light and dark, use F5
call togglebg#map("<F5>")

"" Leader remapping (swap , and \)

" Use , instead of \ as leader
let mapleader=","
" Keep , functionality available in \
noremap <Bslash> ,

"" Quickly open vimrc and gvimrc with ,ev and ,eg
"" and quickly source them with ,sv and ,sg
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>eg :vsplit $MYGVIMRC<cr>
nnoremap <leader>ehv :split $MYVIMRC<cr>
nnoremap <leader>ehg :split $MYGVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>sg :source $MYGVIMRC<cr>

"" <esc> is awkward to use to get out of insert mode so
"" let's use kj instead.  How often does kj get typed?
inoremap kj <esc>

" Map enter to clear highlight search in normal mode
nnoremap <cr> :nohlsearch<cr>

" Tab is easier to press than %
" (Ctrl+I does same as tab used to)
" Use recursive mappings to take advantage of matchit.vim
nmap <tab> %
vmap <tab> %

" Ctrl+6 is tricky to hit so map ,, to it for easy
" last buffer switching
nnoremap <leader><leader> <C-^>

" %% in command mode is expanded to directory of
" current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Use - and _ to move current [n] lines up or down one
nnoremap - ddp
nnoremap _ ddkP

" Use H and L for home and end -- easier to type
nnoremap H ^
vnoremap H ^
nnoremap L $
vnoremap L $

"" Window management mappings

" Open new vertical split and switch to it with ,v
" Open new horizontal split and switch to it with ,h
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

" Close window quickly with ,q
nnoremap <leader>q :q<cr>

" Navigate windows using C-hjkl instead of C-w C-hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"" Command-T mappings

map <leader>f :CommandT<cr>
map <leader>F :CommandT %%<cr>


"" Ack mappings

map <leader>a :Ack 


"" Markdown specific mappings (should be triggered only for .md files?)

" These five mappings will take the current line and turn it into a
" header with the corresponding level 1 through 5.  1 and 2 prefer
" underline style, while the rest must be hash mark style.
nnoremap <leader>1 YpVr=
nnoremap <leader>2 YpVr-
nnoremap <leader>3 I### <esc>A ###<esc>
nnoremap <leader>4 I#### <esc>A ####<esc>
nnoremap <leader>5 I##### <esc>A #####<esc>
