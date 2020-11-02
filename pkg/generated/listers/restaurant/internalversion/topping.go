/*
Copyright The Kubernetes Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

// Code generated by lister-gen. DO NOT EDIT.

package internalversion

import (
	restaurant "github.com/mchirico/pizza-apiserver/pkg/apis/restaurant"
	"k8s.io/apimachinery/pkg/api/errors"
	"k8s.io/apimachinery/pkg/labels"
	"k8s.io/client-go/tools/cache"
)

// ToppingLister helps list Toppings.
type ToppingLister interface {
	// List lists all Toppings in the indexer.
	List(selector labels.Selector) (ret []*restaurant.Topping, err error)
	// Get retrieves the Topping from the index for a given name.
	Get(name string) (*restaurant.Topping, error)
	ToppingListerExpansion
}

// toppingLister implements the ToppingLister interface.
type toppingLister struct {
	indexer cache.Indexer
}

// NewToppingLister returns a new ToppingLister.
func NewToppingLister(indexer cache.Indexer) ToppingLister {
	return &toppingLister{indexer: indexer}
}

// List lists all Toppings in the indexer.
func (s *toppingLister) List(selector labels.Selector) (ret []*restaurant.Topping, err error) {
	err = cache.ListAll(s.indexer, selector, func(m interface{}) {
		ret = append(ret, m.(*restaurant.Topping))
	})
	return ret, err
}

// Get retrieves the Topping from the index for a given name.
func (s *toppingLister) Get(name string) (*restaurant.Topping, error) {
	obj, exists, err := s.indexer.GetByKey(name)
	if err != nil {
		return nil, err
	}
	if !exists {
		return nil, errors.NewNotFound(restaurant.Resource("topping"), name)
	}
	return obj.(*restaurant.Topping), nil
}
