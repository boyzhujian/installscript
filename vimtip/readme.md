# vimrc
>rc means run command

* each line is executed as command* 
- set ruler = :set ruler
- set number
- set hlsearch      Highlight all search pattern matches

[what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping](https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping)
remap is an option that makes mappings work recursively. By default it is on and I'd recommend you leave it that way. The rest are mapping commands, described below:

:map and :noremap are recursive and non-recursive versions of the various mapping commands. What that means is that if you do:

:map j gg
:map Q j
:noremap W j
j will be mapped to gg. Q will also be mapped to gg, because j will be expanded for the recursive mapping. W will be mapped to j (and not to gg) because j will not be expanded for the non-recursive mapping.
