cat << EOF > /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=cgroupfs"]
}
EOF

edit 
/usr/lib/systemd/system/docker.service
 --exec-opt native.cgroupdriver=cgroupfs




sed -i "s/cgroup-driver=systemd/cgroup-driver=cgroupfs/g" /etc/systemd/system/kubelet.service.d/10-kubeadm.conf

systemctl daemon-reload && systemctl restart kubelet docker 

