module github.com/mchirico/pizza-apiserver

go 1.15

require (
	github.com/go-openapi/spec v0.19.3
	github.com/google/gofuzz v1.1.0
	github.com/spf13/cobra v0.0.4
	k8s.io/api v0.19.3 // indirect
	k8s.io/apimachinery v0.19.3
	k8s.io/apiserver v0.0.0-20190409021813-1ec86e4da56c
	k8s.io/client-go v11.0.1-0.20190409021438-1a26190bd76a+incompatible
	k8s.io/code-generator v0.19.3
	k8s.io/component-base v0.0.0-20201020201314-b8c7ac1518d8
	k8s.io/klog v0.2.1-0.20190306015804-8e90cee79f82
	k8s.io/kube-openapi v0.0.0-20200923155610-8b5066479488
)

replace (
	k8s.io/api => k8s.io/api v0.0.0-20201020200614-54bcc311e327
	k8s.io/apimachinery => k8s.io/apimachinery v0.0.0-20201020200440-554eef9dbf66
	k8s.io/apiserver => k8s.io/apiserver v0.0.0-20201020201555-2ae8708a5843
	k8s.io/client-go => k8s.io/client-go v0.0.0-20201020200834-d1a4fe5f2d96
	k8s.io/code-generator => k8s.io/code-generator v0.0.0-20201020200306-60862b8acf58
	k8s.io/component-base => k8s.io/component-base v0.0.0-20201020201314-b8c7ac1518d8
)
