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
