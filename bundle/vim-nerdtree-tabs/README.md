# NERDTree and tabs together in Vim, painlessly

## Installation

1. Copy the plugin into your vim config dir (via pathogen for example).

2. Map :NERDTreeTabsToggle command to some combo so you don't have to type it.
   Alternatively, you can use plug-mapping instead of a command, like this:

        map <Leader>n <plug>NERDTreeTabsToggle<CR>

3. Celebrate.

## Features

This plugin aims at making NERDTree feel like a true panel, independent of tabs.

* **Just one NERDTree**, always and ever. It will always look the same in
  all tabs, including expanded/collapsed nodes, scroll position etc.

* Open in all tabs / close in all tabs. Do this via `:NERDTreeTabsToggle`

* Meaningful tab captions. No more captions like 'NERD_tree_1'.

* When you close a file, the tab closes with it. No NERDTree hanging open.

* Autoopen NERDTree on GVim / MacVim startup.

Many of these features can be switched off. See section Configuration.

## Commands and Mappings

Vim-nerdtree-tabs defines two commands:

* `:NERDTreeTabsToggle` switches NERDTree on/off for all tabs.

* `:NERDTreeMirrorToggle` acts as `:NERDTreeToggle`, but smarter: When opening,
  it first tries to use an existing tree (i.e. previously closed in this tab or
  perform a mirror of another tab's tree). If all this fails, a new tree is
  created. It is recommended that you use this command instead of `:NERDTreeToggle`.

There are also plug-mappings available with the same functionality:

* `<plug>NERDTreeTabsToggle`
* `<plug>NERDTreeMirrorToggle`

## Configuration

You can switch on/off some features of the plugin by setting global vars to 1
(for on) or 0 (for off) in your vimrc. Here are the options and their default
values:

* `let g:nerdtree_tabs_open_on_gui_startup = 1`  
  Open NERDTree on gvim/macvim startup

* `let g:nerdtree_tabs_open_on_console_startup = 0`  
  Open NERDTree on console vim startup

* `let g:nerdtree_tabs_open_on_new_tab = 1`  
  Open NERDTree on new tab creation (if NERDTree was globally opened by
  :NERDTreeTabsToggle)

* `let g:nerdtree_tabs_meaningful_tab_names = 1`  
  Unfocus NERDTree when leaving a tab for descriptive tab names

* `let g:nerdtree_tabs_autoclose = 1`  
  Close current tab if there is only one window in it and it's NERDTree

* `let g:nerdtree_tabs_synchronize_view = 1`  
  Synchronize view of all NERDTree windows (scroll and cursor position)

## Credits

* The tab autoclose feature is stolen from Carl Lerche & Yehuda Katz's
  [Janus](https://github.com/carlhuda/janus). Thanks, guys!

