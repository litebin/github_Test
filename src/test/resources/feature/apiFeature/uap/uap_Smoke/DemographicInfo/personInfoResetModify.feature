# language: zh-CN
功能: 人口特征信息

  场景大纲: 99bill侧人口特征信息重置成功修改ismarried=0
    假如项目<name>做PWID<type>_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<regular>
    例子:
      |name|type|path|param|regular|
      |uap|99bill|/account/personal_data/reset|{"reqHeader":{ "reqId":"123", "sessionId":"672560"},"QQ":"ffantest","aliasName":"21343214haahc测试","isMarried":"0","Occupation":"","constellation":"ceshi阿迪的萨菲","Blood":"ABX阿斯顿发送到","wechatAccount":"321阿斯顿发撒旦法3","weiboAccount":"1334发斯蒂芬四谛法说","Education":"1", "School":"hahafd撒发送到", "incomeRange":"122", "Kids":"2", "province":"1233"}|UAP-10000|