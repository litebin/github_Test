# language: zh-CN
功能: 创建发放批次
  场景大纲: 创建发放批次
    假如项目<name>做post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name  |path|param|errorMessage|errorCode|
      |coupon|/coupon/issues|{"couponId":100000,"issueType":"channel","totalCount":100,"targets":[22811],"notifyMethod":"sms","createBy":"yaolei","issueMap":"{}"}|优惠券不存在|4002|

  场景大纲: 创建发放批次
    假如项目<name>做post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name  |path|param|errorMessage|errorCode|
      |coupon|/coupon/issues|{"couponId":317,"issueType":"channel","totalCount":100,"targets":[22811],"notifyMethod":"123","createBy":"yaolei","issueMap":"{}"}|参数错误|4000|

  场景大纲: 创建发放批次
    假如项目<name>做post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name  |path|param|errorMessage|errorCode|
      |coupon|/coupon/issues|{"couponId":317,"issueType":"channel","totalCount":1,"targets":[22811,22823],"notifyMethod":"sms","createBy":"yaolei","issueMap":"{}"}|超出总数|4005|
