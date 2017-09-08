#must have  Subsystem sftp internal-sftp  run with sudo 
 
ansible all -u "jiazhu3" -k --sudo -K       -a "cat /etc/ssh/sshd_config"
