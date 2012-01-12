"" .gvimrc
""
"" Ian Halliday
"" ianwjhalliday
""
"" Jan 8 2012
""

"" Common gVim/MacVim settings
set guicursor=n:blinkon0            " turn cursor blinking off in normal mode
set guioptions-=T                   " hide the toolbar
set guioptions-=m                   " hide the menu
set guioptions-=r                   " hide GUI scrollbars
set guioptions-=l                   " hide GUI scrollbars
set guioptions-=L                   " hide GUI scrollbars
set cursorline                      " highlight line cursor is on (only looks good in gvim)

set visualbell                      " don't beep

"" Windows gVim specific settings
if has("gui_win32")
  set guifont=Consolas:h9
  set guioptions-=t                 " disable tear-off menu items
endif

"" MacBook Pro specific settings
if has("gui_macvim")
  set guifont=Inconsolata-dz:h14    " Inconsolata-dz 14 preferred on my MacBook Pro
endif
