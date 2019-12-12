```
<target> : <prerequisites> 
[tab]  <commands>

```


.PHONY  target
@cmd
VAR?=${shell pwd}/build


.DEFAULT_GOAL


Sets the default goal to be used if no targets were specified on the command line (see Arguments to Specify the Goals). The .DEFAULT_GOAL variable allows you to discover the current default goal, restart the default goal selection algorithm by clearing its value, or to explicitly set the default goal. 



[https://www.gnu.org/software/make/manual/html_node/Setting.html(https://www.gnu.org/software/make/manual/html_node/Setting.html)
If you’d like a variable to be set to a value only if it’s not already set, then you can use the shorthand operator ‘?=’ instead of ‘=’. These two settings of the variable ‘FOO’ are identical (see The origin Function):

FOO ?= bar
and

ifeq ($(origin FOO), undefined)
FOO = bar
endif
