# language: zh-CN
功能: 创建优惠券

  场景大纲: 创建优惠券
    假如项目<name>做post请求数据准备<path>和<param1>
    当执行post请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name|path|param1|errorMessage|errorCode|
      |coupon |/coupons|{"title":"this is a test coupon","type": "ddd","amount": 1000,"lowerLimit": 2000,"startDate": "2017-03-13","endDate": "2018-06-30","products": [10561, 10562, 10563],"createBy": "yaolei"}|优惠券类型不存在|4001|

  场景大纲: 创建优惠券
    假如项目<name>做post请求数据准备<path>和<param1>
    当执行post请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name|path|param1|errorMessage|errorCode|
      |coupon |/coupons|{"title":"this is a test coupon","type": "interest","lowerLimit": 2000.11,"startDate": "2017-03-13","endDate": "2018-06-30","products": [10561, 10562, 10563],"createBy": "yaolei"}|参数错误|4000|