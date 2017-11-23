# language: zh-CN
功能: 活期赎回
  场景大纲:用户登录
    假如项目<name>做login_post请求数据准备<path>和<param1>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name|path|param1|accessToken|
      |wealth |/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲:活期赎回
    假如项目<name>做post请求数据准备<path>和<param1>
    当执行post请求
    那么检查接口返回状态码status是<code>
    例子:
      |name|path|param1|code|
      |wealth |/api/v1//user/order/redeem|{"productId":10641,"amount":1000.00,"password":"111111","orderChannel":"wealthApp"}|200|

  场景大纲:活期赎回
    假如项目<name>做post请求数据准备<path>和<param1>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name|path|param1|code|
      |wealth |/api/v1//user/order/redeem|{"productId":10641,"amount":1000.00,"password":"222222","orderChannel":"wealthApp"}|1029|