```
<target> : <prerequisites> 
[tab]  <commands>

```


.PHONY  target
@cmd
VAR?=${shell pwd}/build


.DEFAULT_GOAL


Sets the default goal to be used if no targets were specified on the command line (see Arguments to Specify the Goals). The .DEFAULT_GOAL variable allows you to discover the current default goal, restart the default goal selection algorithm by clearing its value, or to explicitly set the default goal. 
