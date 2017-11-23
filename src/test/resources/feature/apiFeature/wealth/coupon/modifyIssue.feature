# language: zh-CN
功能: 修改发放批次

  场景大纲: 修改发放批次
    假如项目<name>做put请求数据准备<path>和<param>
    当执行put请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name |path|param|errorMessage|errorCode|
      |coupon|/coupon/issues/100000|{"status":"cancel"}|发放批次不存在|4007|
