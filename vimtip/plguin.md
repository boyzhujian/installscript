[learning vimscript the hard way ](http://learnvimscriptthehardway.stevelosh.com/)


- vim-plugin
- Pathogen
- Vundle



# install vim-plugin
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
 
call plug#begin()
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

```


