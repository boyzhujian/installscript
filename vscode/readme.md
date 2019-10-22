
### usefulpugin
- remote develop
- docker



### quick key

ctrl + `    toggle termnal
ctrl+ shift +`    backtip  open terminal
cmd + \  split terminal
ctrl +k  clear terminal

### termial keyboard short

https://code.visualstudio.com/docs/editor/integrated-terminal



cmd+shift +p   

terminal:rename    reanme your terminal 


#crete task file 

Open a folder with vscode
Hit F1
Select "Tasks: Configure Task Runner"
Hit Enter and vscode will create a sample task.json for you

shifit+cmd+B  run build task

```
{
    // See https://go.microsoft.com/fwlink/?LinkId=733558
    // for the documentation about the tasks.json format
    "version": "2.0.0",
    "tasks": [
        {
            "label": "echo",
            "type": "shell",
            "command": "echo Hello",
            "group": {
                "kind": "build",
                "isDefault": true
            }
        }
    ]
}
```


### dev  in container

git clone https://github.com/Microsoft/vscode-remote-try-node
git clone https://github.com/Microsoft/vscode-remote-try-python
git clone https://github.com/Microsoft/vscode-remote-try-go
git clone https://github.com/Microsoft/vscode-remote-try-java
git clone https://github.com/Microsoft/vscode-remote-try-dotnetcore
git clone https://github.com/Microsoft/vscode-remote-try-php
git clone https://github.com/Microsoft/vscode-remote-try-rust
git clone https://github.com/Microsoft/vscode-remote-try-cpp
