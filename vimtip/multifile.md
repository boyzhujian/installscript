- :Explore
- :ls 
- :e filename
- :tabedit filename  |:tabe  filename
- :tab split
- :help tabe
- navigate tab  :tabs (show all tabs ) :tabfirst :tablast :tabn (tab next)  :tabp(tab privious)
- navigate tab  just gt gT  2gt 
- multiple file open vim -p source.c source.h 
- close  :tabclose :tabonly
- :mksession header-files-work.vim
- vim -S header-files-work.vim   or :source  eader-files-work.vim


[vim tips ](https://medium.freecodecamp.org/learn-linux-vim-basic-features-19134461ab85)
```

eader-files-work.vim 

Open Vim with any file or just Vim: $ vim file1
Type the contents of file and get into command mode (Press Esc )
:tabedit file2 , will open a new tab and take you to edit file2
:tabedit file3 , will open a new tab and take you to edit file3
To navigate between these tabs, you can be in normal mode and type : gt or gT to go to next tab or previous tab respectively. You can also navigate to a particular index tab (indexed from 1) using {i}gt where, i is the index of your tab. Example: 2gt takes you to 2nd tab
To directly move to first tab or last tab, you can enter the following in command mode: :tabfirst or :tablast for first or last tab respectively. To move back and forth : :tabn for next tab and :tabp for previous tab
You can list all the open tabs using : :tabs
To open multiple files in tabs: $ vim -p source.c source.h
To close a single tab: :tabclose and to close all other tabs except the current one: :tabonly . Use the suffix! to override changes of unsaved files
```
