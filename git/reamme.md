Some baisc tip of git command


[https://github.com/Gazler/githug](https://github.com/Gazler/githug)
[https://learngitbranching.js.org/](https://learngitbranching.js.org/)
[https://try.github.io/](https://try.github.io/)

git help everyday

[https://www.atlassian.com/git/tutorials/resetting-checking-out-and-reverting](https://www.atlassian.com/git/tutorials/resetting-checking-out-and-reverting)

git checkout

A checkout is an operation that moves the HEAD ref pointer to a specified commit. To demonstrate this consider the following example.


git revert

A revert is an operation that takes a specified commit and creates a new commit which inverses the specified commit. git revert can only be run at a commit level scope and has no file level functionality.

git reset 

A reset is an operation that takes a specified commit and resets the "three trees" to match the state of the repository at that specified commit. A reset can be invoked in three different modes which correspond to the three trees.

git branch -f branname

set  branch to current header


git cherry-pick commit1 commit2 

git checkout -b localchan origin/master
set local branch to remote upstream


HEAD指针通常会指向当前所在分支的分支指针。


git log --oneline --all --graph

if git pull fail  ,try git pull --rebase 
git pull --rebase ;git push

### git push origin source:destination

### git fetch pull push with arugment

git pull origin bar:foo
git pull origin master:side


### delete remote branch

git branch --delete <branch>
git branch -d <branch> # Shorter version
git branch -D <branch> # Force delete un-merged branches


git branch --delete --remotes <remote>/<branch>
git branch -dr <remote>/<branch> # Shorter

git fetch <remote> --prune # Delete multiple obsolete tracking branches
git fetch <remote> -p      # Shorter
  
  
  
  
  通常代码编辑器所做不到的功能是git diff：

git diff 显示当前工作区的文件和暂存区文件的差异

git diff --staged 显示暂存区和HEAD的文件的差异

git diff HEAD 显示工作区和HEAD的文件的差异



补充：git reset默认参数是--mixed，即上式等价为：git reset hello.js --mixed 。

设置为--hard时会影响到HEAD、暂存区、工作区
设置为--mixed时只会影响到HEAD、暂存区
设置为--soft时只会影响到HEAD
