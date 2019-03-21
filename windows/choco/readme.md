## Install  chocolate
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin


### Help
choco -?

### Search   
clist   softwarename

### Common Use
- choco install Cmder
- choco install autohotkey.portable    #安装 AutoHotkey (Portable)
- choco install nodejs.install  #安装 node
- choco install git.install     #安装 git
- choco install python          #安装 python
- choco install ruby            #安装 ruby
- choco install jdk8            #安装 JDK8
- choco install googlechrome    #安装 Chrome
- choco install google-chrome-x64 #Google Chrome (64-bit only)
- choco install firefox         #安装 firefox
- choco install notepadplusplus.install #安装 notepad++
- choco install Atom                    #安装 Atom
-  choco install SublimeText3   
