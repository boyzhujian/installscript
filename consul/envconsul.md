https://releases.hashicorp.com/consul/1.5.3/
wget https://releases.hashicorp.com/envconsul/0.8.0/envconsul_0.8.0_darwin_amd64.tgz

consul agent -dev


consul kv put my-app/address 1.2.3.4
consul kv put my-app/port 80
consul kv put my-app/max_conns 5





envconsul -prefix my-app env


envconsul -config  consulenvconfig.hcl env
