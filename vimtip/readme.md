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

[what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping](https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping)
remap is an option that makes mappings work recursively. By default it is on and I'd recommend you leave it that way. The rest are mapping commands, described below:

:map and :noremap are recursive and non-recursive versions of the various mapping commands. What that means is that if you do:

:map j gg
:map Q j
:noremap W j
j will be mapped to gg. Q will also be mapped to gg, because j will be expanded for the recursive mapping. W will be mapped to j (and not to gg) because j will not be expanded for the non-recursive mapping.
