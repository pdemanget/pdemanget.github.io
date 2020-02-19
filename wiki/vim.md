
Column edit
------------
ctrl-V
ctrl-i


Convert dos to unix
-------------------
:e ++ff=unix
:%s/\r//g

multiple windows
----------------

Shamefully copied from <https://www.cs.oberlin.edu/~kuperman/help/vim/windows.html>

If you want, you can probably do everything from one vim session! :) Here are some commands to turn one vim session (inside one xterm) into multiple windows.

 :e filename      - edit another file
 :split filename  - split window and load another file
 ctrl-w up arrow  - move cursor up a window
 ctrl-w ctrl-w    - move cursor to another window (cycle)
 ctrl-w_          - maximize current window
 ctrl-w=          - make all equal size
 10 ctrl-w+       - increase window size by 10 lines
 :vsplit file     - vertical split
 :sview file      - same as split, but readonly
 :hide            - close current window
 :only            - keep only this window open
 :ls              - show current buffers
 :b 2             - open buffer #2 in this window

 
Coders options
--------------------
 
    :set number
    :set shiftwidth=2
 
 
vimrc
--------------------
 touch ~/.vimrc
echo "set shiftwidth=2" >> ~/.vimrc
 
 
 