# language: zh-CN
功能: 提交产品预约

  场景大纲: 登录
    假如项目<name>做login_post请求数据准备<path>和<param>
    当token_执行post请求
    那么检查接口响应字段中是否包含<accessToken>
    例子:
      |name |path|param|accessToken|
      |wealth|/api/v1/login|{"pwd":"a123456"}|accessToken|

  场景大纲: 提交产品预约
    假如项目<name>做post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应int类型中errorCode的值为<code>
    例子:
      |name |path|param|code|
      |wealth|/api/v1/user/reservations|{"date":"2017-10-19","amount":1000,"phone":"15866265183","city":"上海", "productId":10641}|2029|