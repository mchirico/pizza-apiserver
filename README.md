# pizza-apiserver
An aggregated custom API server


You may need to run `go mod vendor`


```bash

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o artifacts/simple-image/pizza-apiserver

docker build -t quay.io/mchirico/pizza-apiserver:v1 ./artifacts/simple-image
docker push quay.io/mchirico/pizza-apiserver:v1





# Do this twice, namespace may not be loaded.
k apply -f artifacts/deployment



cd artifacts/example/
ls topping* | xargs -n 1 kubectl create -f

kubectl apply -f pizza-margherita.yaml

# Now look at result 

kubectl get pizza -o yaml margherita



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


kubectl exec --stdin --tty pizza-apiserver-6886ff4688-wtp9k -c apiserver  -- /bin/bash
yum update -y
yum install etcd -y
yum install -y procps
yum install -y net-tools
# If you need everything...
yum group install "Development Tools" -y


```

From here, take a look at [debugging](https://github.com/mchirico/pizza-apiserver/issues/1)

