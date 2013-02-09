screenrc-ftw
============

The screenrc of the winners. A powerful and very simple to use configuration for GNU Screen.
Sit back and enjoy working on your terminal...

Installation is so simple that it does not deserve the name "installation". Namely:

  1. Checkout this repository, and enter it: "cd screenrc-ftw"
  2. Execute the included little script: "./mklink.sh"

This will make your .screenrc in the home directory point to the file inside this repo, so, everything you need. In case you already have a .screenrc, do not fear, a backup will be made under .screenrc.bkp


Niceties
========

  1. Status line with date and time, the list of windows and highlighting the current window
  2. Support for 256 colors, allowing all of your favorite colorful programs to run - worry-free
  3. No annoying startup message, no annoying "trashy" text when exiting full-screen programs
  4. You CAN use the mouse to switch windows and regions - IF you have it and like it, why not? :)
  5. Some comfortable general keybindings:
    * Close Screen completely: **Ctrl-/ (Control + Slash)**
    * Enter copy mode: **Ctrl-F9**
    * Paste: **Ctrl-F10**
  6. Set of nice default windows when Screen is launched:
    * Three shells (windows 1, 2 and 3)
    * Status window (window 5) - can be either htop (if the user has it) or plain top
    * Irssi or Shell (window 4) - Irssi if the user has it, otherwise just plain shell
  7. Bindings to alternate between windows: **F3 (prev. window)** and **F4 (next window)**
  8. Set of nice default layouts, with keybindings to select each as you wish:
    * One shell, occupying the whole terminal: **Ctrl-F3**
    * Two shells, horizontally: **Ctrl-F4**
    * Three shells, one big and two smaller ones in the bottom: **Ctrl-F5**
    * A shell and another program, horizontally
      * Shell and Irssi (in case there is): **Ctrl-F6**
      * Shell and System Status: **Ctrl-F7**
  9. Finally, some nice keybindings to resize regions pretty easily:
    * First, you enter _resize mode_ by pressing **F2**
    * Then, use vim-like keys:
      * To _increase height_, you press **k**
      * To _decrease height_, you press **j**
      * To _increase width_, you press **l**
      * To _decrease width_, you press **h**
