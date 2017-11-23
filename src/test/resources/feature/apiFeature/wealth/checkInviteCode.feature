# language: zh-CN
功能: 验证定期产品特邀码

  场景大纲: 登录
    假如项目<name>做login_post请求数据准备<path>和<param>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name |path|param|accessToken|
      |wealth|/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲:产品期限分类器
    假如项目<name>做get请求数据准备<path>
    当filterValue_执行get请求
    那么检查接口响应字段中是否包含<filterValue>
    例子:
      |name  |path|filterValue|
      |wealth|/api/v1/productfilter|filterValue|

  场景大纲:  理财页产品列表-第二版
    假如项目<name>做filterValue_get请求数据准备<path>
    当productid_执行get请求
    那么检查接口响应字段中是否包含<additionRate>
    例子:
      |name|path|additionRate|
      |wealth|/api/v2/productlist?pageIndex=0&pageSize=10|additionRate|

  场景大纲: 验证定期产品特邀码
    假如项目<name>做regularproductid_get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<inviteResult>
    例子:
      |name |path|inviteResult|
      |wealth|/api/v1/product/invitecode?id=|inviteResult|