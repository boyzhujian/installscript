export kubever=$(kubectl version | base64 | tr -d '')
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$kubever"

#kubectl apply -f "https://cloud.weave.works/k8s/v1.10/net.yaml?k8s-version=1.12.0"
