# language: zh-CN
功能: 修改用户优惠券

  场景大纲: 修改用户优惠券
    假如项目<name>做put请求数据准备<path>和<param>
    当执行put请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name|path|errorMessage|param|errorCode|
      |coupon |/users/22811/coupons/428422|参数错误|{ "action":"abab"}|4000|

  场景大纲: 修改用户优惠券
    假如项目<name>做put请求数据准备<path>和<param>
    当执行put请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name|path|errorMessage|param|errorCode|
      |coupon |/users/22811/coupons/1000000|优惠券不存在|{ "action":"lock"}|4002|


  场景大纲: 修改用户优惠券
    假如项目<name>做put请求数据准备<path>和<param>
    当执行put请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name|path|errorMessage|param|errorCode|
      |coupon |/users/22811/coupons/A42|操作失败|{ "action":"lock"}|4003|


  场景大纲: 修改用户优惠券
    假如项目<name>做put请求数据准备<path>和<param>
    当执行put请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name|path|errorMessage|param|errorCode|
      |coupon |/users/22811/coupons/428429|优惠券已锁定|{ "action":"lock"}|4010|