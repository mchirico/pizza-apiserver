module github.com/mchirico/pizza-apiserver

go 1.15

require (
	github.com/NYTimes/gziphandler v0.0.0-20170623195520-56545f4a5d46 // indirect
	github.com/PuerkitoBio/urlesc v0.0.0-20170810143723-de5bf2ad4578 // indirect
	github.com/coreos/etcd v3.3.10+incompatible // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-openapi/spec v0.19.3
	github.com/google/gofuzz v1.1.0
	github.com/gophercloud/gophercloud v0.0.0-20190126172459-c818fa66e4c8 // indirect
	github.com/imdario/mergo v0.3.5 // indirect
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/pborman/uuid v0.0.0-20150603214016-ca53cad383ca // indirect
	github.com/mchirico/pizza-apiserver v0.0.1
	github.com/spf13/cobra v0.0.4
	gonum.org/v1/gonum v0.0.0-20190413104459-5d695651a1d5 // indirect
	k8s.io/apimachinery v0.19.3
	k8s.io/apiserver v0.0.0-20190409021813-1ec86e4da56c
	k8s.io/client-go v11.0.1-0.20190409021438-1a26190bd76a+incompatible
	k8s.io/code-generator v0.19.3
	k8s.io/component-base v0.0.0-20201020201314-b8c7ac1518d8
	k8s.io/klog v0.2.1-0.20190306015804-8e90cee79f82
	k8s.io/kube-openapi v0.0.0-20200923155610-8b5066479488
	k8s.io/sample-controller v0.19.3 // indirect
	sigs.k8s.io/structured-merge-diff v0.0.0-20190302045857-e85c7b244fd2 // indirect
)

replace (
	k8s.io/api => k8s.io/api v0.0.0-20201020200614-54bcc311e327
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20201020200440-554eef9dbf66
	k8s.io/apiserver => k8s.io/apiserver v0.0.0-20201020201555-2ae8708a5843
	k8s.io/client-go => k8s.io/client-go v0.0.0-20201020200834-d1a4fe5f2d96
	k8s.io/code-generator => k8s.io/code-generator v0.0.0-20201020200306-60862b8acf58
	k8s.io/component-base => k8s.io/component-base v0.0.0-20201020201314-b8c7ac1518d8
)
