# language: zh-CN
功能:授信流程进入身份证页面（查看）
  场景大纲:登录
    假如项目<name>做wdloansLogin_post请求数据准备<path>和<param>
    当login_getaccessToken_post执行post请求
    那么检查接口是否返回正确<regular>

    例子:
      |name|path|param|regular|
      |loans|/api/v1/login|{}|accessToken|
  场景大纲:授信流程进入身份证页面（查看）
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口是否返回正确<regular>

    例子:
      |name|path|regular|
      |loans|/page/user/idcardprod|身份证管理|