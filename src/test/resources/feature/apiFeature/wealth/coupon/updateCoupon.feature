# language: zh-CN
功能: 更新优惠券

  场景大纲: 更新优惠券
    假如项目<name>做put请求数据准备<uri1>和<param>
    当执行put请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name|uri1|param|errorMessage|errorCode|
      |coupon|/coupons/10000000|{"products": [10561, 10562, 10563]}|优惠券不存在|4002|