PROJECT = septapig
NAME = pizza-apiserver
TAG = v1

ifndef $(GOPATH)
  export GOPATH=${HOME}/gopath
  ${shell mkdir -p ${GOPATH}}
endif

ifndef $(GOBIN)
  export GOBIN=${GOPATH}/bin
endif


.PHONY: build
build:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o artifacts/simple-image/pizza-apiserver


.PHONY: push
push:
	docker build -t quay.io/mchirico/pizza-apiserver:v1 ./artifacts/simple-image
	docker push quay.io/mchirico/pizza-apiserver:v1
