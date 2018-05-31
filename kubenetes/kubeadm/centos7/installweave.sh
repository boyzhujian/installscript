export kubever=$(kubectl version | base64 | tr -d '')
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$kubever"
