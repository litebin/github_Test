# language: zh-CN
功能:根据银行卡号获取开户行
  场景大纲:登录
    假如项目<name>做wdloansLogin_post请求数据准备<path>和<param>
    当login_getaccessToken_post执行post请求
    那么检查接口是否返回正确<regular>

    例子:
      |name|path|param|regular|
      |loans|/api/v1/login|{}|accessToken|

  场景大纲: 根据银行卡号获取开户行
    假如项目<name>做issuebank_get请求数据准备<path>
    当issuebank_get执行get请求
    那么检查接口是否返回正确<regular>

    例子:
      |name|path|regular|
      |loans|/api/v1/bankcard/issuebank?bankcardNo=|issueBank|