# language: zh-CN
功能: 获取活期产品详情
  场景大纲:获取活期产品详情
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<riskLevel>
    例子:
      |name|path|riskLevel|
      |wealth|/api/v1/product/detail?id=10641|riskLevel|

