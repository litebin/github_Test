# language: zh-CN
功能: 新增用户详细信息
  场景大纲:登录
    假如项目<name>做wdloansLogin_post请求数据准备<path>和<param>
    当login_getaccessToken_post执行post请求
    那么检查接口是否返回正确<regular>

    例子:
      |name|path|param|regular|
      |loans|/api/v1/login|{}|accessToken|

  场景大纲: 新增用户详细信息
    假如项目<name>做adduserdetails_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>

    例子:
      |name|path|param|regular|
      |loans|/api/v1/user/extra|{"addressProvince":"上海","addressCity":"上海市","addressDistrict":"浦东新区","addressCode":"410000","homeAddress":"陆家嘴世纪金融广场798号","companyName":"飞凡信息科技有限公司","contactName":"张飞","contactPhoneno":"13011112222","contactRelationship":"1"}|\\{\\}|