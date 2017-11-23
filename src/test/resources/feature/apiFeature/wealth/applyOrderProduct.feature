# language: zh-CN
功能: 创建订单

  场景大纲: 登录
    假如项目<name>做login_post请求数据准备<uri>和<param>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|uri|param|accessToken|
      |wealth|/api/v1/login|{"pwd":"a123456"}|accessToken|


  场景大纲:申购定期产品
    假如项目<name>做post请求数据准备<uri3>和<param3>
    当执行post请求
    那么检查接口响应字段中是否包含<orderNumber>
    例子:
      | name|uri3|param3|orderNumber|
      |wealth|/api/v1/user/order|{"password":"111111","orderChannel":"wealthApp","cardId":"1024","amount":100,"productId":15725}|orderNumber|

  场景大纲:申购定期产品
    假如项目<name>做post请求数据准备<uri3>和<param3>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      | name|uri3|param3|code|
      |wealth|/api/v1/user/order|{"password":"111111","orderChannel":"wealthApp","cardId":"1024","amount":1000,"productId":15719}|2005|

  场景大纲:申购活期产品
    假如项目<name>做post请求数据准备<uri3>和<param3>
    当执行post请求
    那么检查接口响应字段中是否包含<orderNumber>
    例子:
      |name|uri3|param3|orderNumber|
      |wealth|/api/v1/user/order|{"amount":1000,"password":"111111","orderChannel":"wealthApp","cardId":"1024","productId":10641}|orderNumber|


