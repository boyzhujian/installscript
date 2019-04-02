wget https://repo.mongodb.org/yum/redhat/7/mongodb-org/4.0/x86_64/RPMS/mongodb-org-server-4.0.8-1.el7.x86_64.rpm
rpm -ivh mongodb-org-server-4.0.8-1.el7.x86_64.rpm
systemctl start mongod
systemctl enable mongod


#vi /etc/mongod  
# bindIp: 0.0.0.0   if you want to connect remotely
