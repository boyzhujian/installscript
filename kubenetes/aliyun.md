[kubernetes]
name=Kubernetes
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=0




yum install --nogpgcheck kubelet kubectl kubeadmy

systemctl enable kubelet.service  docker.service