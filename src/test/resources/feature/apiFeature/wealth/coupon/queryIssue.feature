# language: zh-CN
功能: 查询发放批次详情


  场景大纲: 查询发放批次详情
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name |path|errorMessage|errorCode|
      |coupon |/coupon/issuesQuery?issueId=100000&pageIndex=1&pageCount=4|发放批次不存在|4007|