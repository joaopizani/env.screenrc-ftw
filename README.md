screenrc-ftw
============

The screenrc of the winners. A powerful and very simple to use configuration for GNU Screen.
Sit back and enjoy working on your terminal...

Installation is so simple that it does not deserve the name "installation". Namely:

  1. Checkout this repository, and enter it: "cd screenrc-ftw"
  2. Execute the included little script: "./mklink.sh"

This will make your .screenrc in the home directory point to (source) the file inside this repo,
and then the "installation" is DONE. In case there's an existing .screenrc, do not fear, a
backup will be made under .screenrc.bkp


Niceties
========

Here are all the goodies provided by this config. They are roughly ordered in the order that
I think they are important:

General goodies
---------------

  * Status line with date/time, the list of windows and highlighting the current window
  * Support for 256 colors, allowing all of your favorite colorful programs to run - worry-free
  * No annoying startup message, no annoying "trashy" text when exiting full-screen programs
  * You CAN use the mouse to switch windows and regions - IF you have it and like it, why not? :)
  * Some comfortable general keybindings:
    - Close Screen completely: **Ctrl-/ (Control + Slash)**
    - Enter copy mode: **Ctrl-F11**
    - Paste: **Ctrl-F12**

Nice predefined windows and region layouts
------------------------------------------

  * Default windows when Screen is launched:
    - Three shells (windows 1, 2 and 3)
    - Status window (window 5) - can be either htop (if the user has it) or plain top
    - Irssi or Shell (window 4) - Irssi if the user has it, otherwise just plain shell
  * Predefined layouts, among which you can easily alternate:
    - One shell, occupying the whole terminal (default when Screen starts)
    - Two shells, horizontally
    - Three shells, one big and two smaller ones in the bottom
    - A shell and another program, horizontally
      - Shell and Irssi (in case there is)
      - Shell and System Status

Comfortable keybindings to navigate between windows and layouts
---------------------------------------------------------------

  * Alternate between windows:
    - Go to previous window: **Ctrl-F2**
    - Go to next window: **Ctrl-F3**
  * Go directly to a specific window:
    - Window 1 (Shell1): **Ctrl-F4**
    - Window 2 (Shell2): **Ctrl-F5**
    - Window 3 (Shell3): **Ctrl-F6**
    - Window 4 (Irssi-or-Shell): **Ctrl-F7**
    - Window 5 (Status): **Ctrl-F8**
  * Alternate between layouts:
    - Go to previous layout: **Ctrl-F9**
    - Go to next layout: **Ctrl-F10**

  * If you want the navigation command to be **global** (sent to all displays, including
    remote ones), then use also the Shift modifier key together with Ctrl.
    - Previous/next window: **Ctrl-Shift-{F3,F4}**
    - Go directly to one of the 5 predefined windows: **Ctrl-Shift-{F4,F5,F6,F7,F8}**
    - Previous/next layout: **Ctrl-Shift-{F9,F10}**

  * Finally, some nice keybindings to resize regions pretty easily:
    - First, you enter _resize mode_ by issuing **Ctrl-Shift-F1**
      - To do a _global_ resize (in all displays), use **\<Escape\>-R**, where \<Escape\>
        is Screen's escape key sequence (usually Ctrl-a)
    - Then, use vim-like keys to do the resizing:
      - To _increase height_, you press **k**
      - To _decrease height_, you press **j**
      - To _increase width_, you press **l**
      - To _decrease width_, you press **h**
      - _Navigate_ among the regions using the arrow keys

Reasonable default groups of permissions for multiuser mode
-----------------------------------------------------------

GNU Screen's _multiuser_ mode is awesome (http://aperiodic.net/screen/multiuser), but
can be a pain to configure in terms of security. You might want to sometimes give people
some reasonable _reader_ rights, to watch you doing something in the terminal. Some other
times, you want you co-workers to be able to also _write_ to the terminal, but in general
you don't them to be able to change permissions, quit screen, and other _administrative_
stuff...

Well, Screen's commands that grant rights are a mess to use, and so this config includes
two groups with respective permissions:

  * **READERS** are allowed only to watch what's going on on the screen. Besides, they
    can also navigate and send messages to everybody using the "wall" command
  * **WRITERS** can also write to the screen, besides watching and navigating, of course
  * **ADMIN** only you (i.e, the user who has started the Screen session) has full
    rights and can run all Screen commands

Then, after a friend or co-worker of your has connected using an account called, let's
say, "guestaccount", you can grant the right rights (no pun intended) by issuing a
simple:

    :aclgrp guestaccount READERS

or

    :aclgrp guestaccount WRITERS

Multiuser mode is enabled by default when Screen starts, but no users are allowed to attach
(you have to allow them using the commands above) so no security risk is posed. Anyways,
if you are paranoid and want to disable multiuser mode there is a convenient keybinding
even for that! The binding is \<Escape\>-Ctrl-M
