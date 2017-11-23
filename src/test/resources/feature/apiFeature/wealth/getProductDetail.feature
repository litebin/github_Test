# language: zh-CN
功能: 获取活期产品详情

  场景大纲: 产品期限分类器
    假如项目<name>做get请求数据准备<path>
    当filterValue_执行get请求
    那么检查接口响应字段中是否包含<string>
    例子:
      |name|path|string|
      |wealth |/api/v1/productfilter|\\[*\\]|

  场景大纲: 理财产品列表第二版
    假如项目<name>做filterValue_get请求数据准备<path>
    当productid_执行get请求
    那么检查接口响应字段中是否包含<string>
    例子:
      |name |path|string|
      |wealth|/api/v2/productlist?pageIndex=0&pageSize=10|\\[*\\]|

  场景大纲: 获取活期产品详情
    假如项目<name>做productid_get请求数据准备<uri3>
    当执行get请求
    那么检查接口响应字段中是否包含<string>
    例子:
      |name|uri3|string|
      |wealth|/api/v1/product/detail|\\[*\\]|