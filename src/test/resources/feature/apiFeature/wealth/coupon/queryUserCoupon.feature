# language: zh-CN
功能: 查询用户优惠券

  场景大纲: 查询用户优惠券
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name |path|errorMessage|errorCode|
      |coupon|/users/22811/coupons/1000000|优惠券不存在|4002|