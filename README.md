# pizza-apiserver
An aggregated custom API server


```bash
go build -a -o pizza-apiserver

./pizza-apiserver --etcd-servers localhost:2379 \
    --authentication-kubeconfig ~/.kube/config \
    --authorization-kubeconfig ~/.kube/config \
    --kubeconfig ~/.kube/config

```
