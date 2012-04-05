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
  set guifont=Inconsolata:h12       " Use Windows hinted version of Inconsolata (http://code.google.com/p/googlefontdirectory/source/browse/inconsolata)
  set guioptions-=t                 " disable tear-off menu items

  " Only MacVim remembers window sizes, gVim does not
  set lines=45
  set columns=172
endif

"" MacBook Pro specific settings
if has("gui_macvim")
  set guifont=Inconsolata-dz:h14    " Inconsolata-dz 14 preferred on my MacBook Pro
endif
