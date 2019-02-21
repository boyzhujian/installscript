# vimrc
>rc means run command

*each line is executed as command* 


The command:

:split
splits the current window in two. You can then move the cursor up to a window with CTRL-W j and down a window with CTRL-W k.

The command:

:split file.txt
splits the window and begins editing another file.

To close a window, use the normal Vim exit commands ZZ or :q!.



:make
:ab    abbreviations 



options
-h options   sho help
-set    show all options
-set ai    autoindent   
-set cindent   autoindent 
-set lbr   line bread
-set ignorecase  |  set smartcase
-set wildmenu    command line autocomplete ,show menu with tab completion
—set showcmd       show incomplete command
-set incsearch   You can use the CTRL-G and CTRL-T keys to move to the next and    previous match. |c_CTRL-G| |c_CTRL-T|
-set ruler = :set ruler
- set history?
- set number   or  set number!
- set hlsearch      Highlight all search pattern matches
- check option *set  number?*
- check default option 
- help file on option     *h number*
- h history
- set history&

- h option-list    what difference :options
-open file    :e  ~/.vimrc
- show file name  ctrl +g
