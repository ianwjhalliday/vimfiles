"""" .gvimrc
""""
"""" Ian Halliday
"""" ianwjhalliday (gmail)
""""
"""" Style guideline:  Use full names of commands for clarity to readership

"" Common gVim/MacVim settings
set guicursor=n:blinkon0            " turn cursor blinking off in normal mode
set guioptions-=T                   " hide the toolbar
set guioptions-=m                   " hide the menu
set guioptions-=r                   " hide GUI scrollbars
set guioptions-=l                   " hide GUI scrollbars
set guioptions-=L                   " hide GUI scrollbars
set cursorline                      " highlight line that the cursor is on

set visualbell                      " don't beep

"" Windows gVim specific settings
if has("gui_win32")
  "set guifont=Inconsolata:h12       " Use Windows hinted version of Inconsolata (http://code.google.com/p/googlefontdirectory/source/browse/inconsolata)
  "set guifont=Consolas:h9           " Sometimes I feel like good old 96 dpi pixel perfect Consolas 9pt
  set guifont=Consolas:h15          " And sometimes I feel like crazy large crisp Consolas 15pt -- eyes are getting bad
  set guioptions-=t                 " disable tear-off menu items

  " Only MacVim remembers window sizes, gVim does not
  set lines=45
  set columns=172
endif

"" MacBook Pro specific settings
if has("gui_macvim")
  "set guifont=Source\ Code\ Pro\ Light:h18    " Trying out Adobe's Source Code Pro on my MacBook Pro
  set guifont=Source\ Code\ Pro\ Light:h13    " 18 is big, perhaps too big.  13 is nice, comparable to Inconsolata at 12 pt
  "set guifont=Inconsolata-dz:h12
endif

"""" Override and additional settings from external configuration files

if filereadable(expand('~\OneDrive - Microsoft\gvimrc'))
    source $HOME/OneDrive\ -\ Microsoft/gvimrc
endif
