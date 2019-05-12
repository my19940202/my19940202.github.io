

### **resolve的用法**

依赖注入



* **ng-app 定义 root dom，一个页面只允许一个 app**
* **ng-controller**
* **ng-repeat**
* **ngView **`ngView`**指令的角色是为当前路由把对应的视图模板载入到布局模板中**
* **angular.module 创建，注册或检索 AngularJS 模块**
* **ui-sref、$state.go作用基本一样**
* **ng-include**指令用于包含外部的 HTML 文件

```
angular.module('phoneDetail', [
  'ngRoute' // 此处是依赖
]);
```

#### 以下俩写法效果一样

    angular.
      module('phonecatApp').
      component('testList', {
        template:
            `<article>
              <h1>{{name}}</h1>
              <p>{{code}}</p>
            </article>`,
        controller: function PhoneListController($scope) {
          $scope.name = 'Motorola XOOM™ with Wi-Fi';
          $scope.code = 'The Next, Next Generation tablet.';
        }
      });

    angular.
      module('phonecatApp').
      component('test', {
        template:
            `<article>
              <h1>{{$ctrl.name}}</h1>
              <p>{{$ctrl.code}}</p>
            </article>`,
        controller: function PhoneListController() {
          this.name = 'Test components name';
          this.code = 'Test components code';
        }
      });

写法一样2

```
angular.
  module('phoneList').
  component('phoneList', {
    templateUrl: 'phone-list/phone-list.template.html',
    controller: function PhoneListController($http) {
      var self = this;
      self.orderProp = 'age';

      $http.get('phones/phones.json').then(function(response) {
        self.phones = response.data;
      });
    }
  });

angular.
  module('phoneList').
  component('phoneList', {
    templateUrl: 'phone-list/phone-list.template.html',
    controller: ['$http', function PhoneListController($http) {
      var self = this;
      self.orderProp = 'age';

      $http.get('phones/phones.json').then(function(response) {
        self.phones = response.data;
      });
    }]
  });
```

依赖注入

```
PhoneListCtrl.$inject = ['$scope', '$http'];
```

#### filter && orderBy的使用方法

```
<li ng-repeat="phone in $ctrl.phones | filter:$ctrl.query | orderBy:$ctrl.orderProp">
</li>
```

> [https://www.runoob.com/angularjs/angularjs-reference.html](https://www.runoob.com/angularjs/angularjs-reference.html)



