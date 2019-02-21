
[Make_Vim_completion_popup_menu_work_just_like_in_an_IDE](http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE)

:set completeopt=longest,menuone

inoremap <Tab> <C-x><C-o>


[vim-tab-as-omnicomplete-but-not-at-beginning-of-line](https://superuser.com/questions/423673/vim-tab-as-omnicomplete-but-not-at-beginning-of-line)
VIM: Tab as omnicomplete, but not at beginning of line
```
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>
```
