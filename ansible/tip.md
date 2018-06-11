#must have  Subsystem sftp internal-sftp  run with sudo 
 
ansible all -u "jiazhu3" -k --sudo -K       -a "cat /etc/ssh/sshd_config"


why --sudo change to become ,any advantage 
ansible all -i host -u "jiazhu3" -k --become -K -a "cat /etc/ssh/sshd_config"
