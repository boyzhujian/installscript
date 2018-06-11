#must have  Subsystem sftp internal-sftp  run with sudo 


#For me (Centos 7) I needed to change /etc/ssh/sshd_config

#from this:
#Subsystem sftp /usr/libexec/openssh/sftp-server

#to this:
#Subsystem sftp internal-sftp

#restart sshd (systemctl restart sshd)


 
ansible all -u "jiazhu3" -k --sudo -K       -a "cat /etc/ssh/sshd_config"


# ? why --sudo change to become ,any advantage 
ansible all -i host -u "jiazhu3" -k --become -K -a "cat /etc/ssh/sshd_config"
