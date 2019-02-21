-  :help map-which-keys  find unused keys  
- :map
- :map!
-  :verbose map <key>    show map key info
-  unmap   <key>
-  you can use assgin map(  vmap nmap imap  cmap )  in different mod,see help map-modes     
  
  




[what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping](https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping)
remap is an option that makes mappings work recursively. By default it is on and I'd recommend you leave it that way. The rest are mapping commands, described below:

map KEY KEYSTROKES
```
:help :map
:help :noremap
:help recursive_mapping
:help :map-modes
```

```
imap ,9 <c-r>=1+1<cr>
imap <expr> ,9 1+1
```
Both of these do the same thing as far as I can tell: they insert 2 if you type ,9 in insert mode.

:map and :noremap are recursive and non-recursive versions of the various mapping commands. What that means is that if you do:



:map j gg
:map Q j
:noremap W j
j will be mapped to gg. Q will also be mapped to gg, because j will be expanded for the recursive mapping. W will be mapped to j (and not to gg) because j will not be expanded for the non-recursive mapping.



ution, vnoremap and vmap work in Visual AND Select mode. To have a mapping only in Visual mode, use xmap and xnoremap.

:map does nvo == normal + (visual + select) + operator pending
:map! does ic == insert + command-line mode



:map <expr>
```
<BS>           Backspace
<Tab>          Tab
<CR>           Enter
<Enter>        Enter
<Return>       Enter
<Esc>          Escape
<Space>        Space
<Up>           Up arrow
<Down>         Down arrow
<Left>         Left arrow
<Right>        Right arrow
<F1> - <F12>   Function keys 1 to 12
#1, #2..#9,#0  Function keys F1 to F9, F10
<Insert>       Insert
<Del>          Delete
<Home>         Home
<End>          End
<PageUp>       Page-Up
<PageDown>     Page-Down
<C-X>         Ctrl-X
<bar>          the '|' character, which otherwise needs to be escaped '\|'
```




leader  key
```
:help leader

To define a mapping which uses the "mapleader" variable, the special string
"<Leader>" can be used.  It is replaced with the string value of "mapleader".
If "mapleader" is not set or empty, a backslash is used instead.  
Example:
    :map <Leader>A  oanother line <Esc>
Works like:
    :map \A  oanother line <Esc>
But after:
    :let mapleader = ","
It works like:
    :map ,A  oanother line <Esc>

Note that the value of "mapleader" is used at the moment the mapping is
defined.  Changing "mapleader" after that has no effect for already defined
mappings.

```
