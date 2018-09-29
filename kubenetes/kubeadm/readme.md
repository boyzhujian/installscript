https://github.com/cookeem/kubeadm-ha/blob/master/README_CN.md


https://kubernetes.io/docs/tasks/tools/install-kubeadm/



kubeadm init --pod-network-cidr 10.244.0.0/16 --apiserver-advertise-address  173.39.230.83


#flannel
kubeadm init --pod-network-cidr 10.244.0.0/16 --apiserver-advertise-address  173.39.230.83

#Calico
kubeadm init  --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address  173.39.230.83
kubectl apply -f https://docs.projectcalico.org/v3.1/getting-started/kubernetes/installation/hosted/rbac-kdd.yaml
kubectl apply -f https://docs.projectcalico.org/v3.1/getting-started/kubernetes/installation/hosted/kubernetes-datastore/calico-networking/1.7/calico.yaml
