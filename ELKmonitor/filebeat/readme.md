 # install 
  curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.5.2-x86_64.rpm
  rpm -ivh filebeat-5.5.2-x86_64.rpm
 
 # config
  cd /etc/filebeat
  
  
  # run
  systemctl status -l filebeat
  systemctl enable filebeat
