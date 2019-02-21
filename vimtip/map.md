-  :help map-which-keys  find unused keys  
- :map
- :map!
-  :verbose map <key>


[what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping](https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping)
remap is an option that makes mappings work recursively. By default it is on and I'd recommend you leave it that way. The rest are mapping commands, described below:

map KEY KEYSTROKES
```
:help :map
:help :noremap
:help recursive_mapping
:help :map-modes
```

:map and :noremap are recursive and non-recursive versions of the various mapping commands. What that means is that if you do:

:map j gg
:map Q j
:noremap W j
j will be mapped to gg. Q will also be mapped to gg, because j will be expanded for the recursive mapping. W will be mapped to j (and not to gg) because j will not be expanded for the non-recursive mapping.



ution, vnoremap and vmap work in Visual AND Select mode. To have a mapping only in Visual mode, use xmap and xnoremap.

:map does nvo == normal + (visual + select) + operator pending
:map! does ic == insert + command-line mode




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
<bar>          the '|' character, which otherwise needs to be escaped '\|'
```

