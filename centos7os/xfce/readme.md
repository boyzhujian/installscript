xfce is low on cpu usage than gnome and kde, for vm this is better .

```

yum -y groupinstall X11

yum install epel-release

yum --enablerepo=epel -y groups install "Xfce"



echo "exec /usr/bin/xfce4-session" >> ~/.xinitrc

startx


yum install firefox

#to fix firefox Chinsese character problem
yum install wqy*

```
