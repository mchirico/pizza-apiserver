# pizza-apiserver
An aggregated custom API server



```bash

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o artifacts/simple-image/pizza-apiserver

docker build -t quay.io/mchirico/pizza-apiserver:v1 ./artifacts/simple-image
docker push quay.io/mchirico/pizza-apiserver:v1





# Do this twice, namespace may not be loaded.
k apply -f artifacts/deployment

```



```bash
go build -a -o pizza-apiserver

./pizza-apiserver --etcd-servers localhost:2379 \
    --authentication-kubeconfig ~/.kube/config \
    --authorization-kubeconfig ~/.kube/config \
    --kubeconfig ~/.kube/config

```

# Debugging

```bash
kubectl exec --stdin --tty pizza-apiserver-6886ff4688-wtp9k -c etcd  -- /bin/sh

```
