```
USER="jiazhu3"
adduser ${USER}
passwd ${USER}
usermod -aG wheel ${USER}
echo "${USER}  ALL=(ALL) NOPASSWD:ALL">> /etc/sudoers
```
