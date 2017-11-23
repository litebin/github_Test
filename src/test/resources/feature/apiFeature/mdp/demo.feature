# language: zh-CN
功能: 新OTP单接口
  场景大纲:发送单一消息成功
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<messageUUID>
    那么检查接口是否返回正确<code>
    那么检查接口是否返回正确<message>
    例子:
      |name |path|param|messageUUID|code|message|length|
      |mdp|/message/sms/otp|{"systemName":"XD","senceType":"新otp单接口","mobileNo":"18516552825","templateNo":"20170656164556ubn","params":{"testContent":"测试"}}|messageUUID|000000|成功|11|

  场景大纲:发送批量消息成功
    假如项目<name>做包含uuid和time<length>参数的批量post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口是否返回正确<messageUUID>
    那么检查接口是否返回正确<code>
    那么检查接口是否返回正确<message>
    例子:
      |name |path|param|messageUUID|code|message|length|
      |mdp|/message/batch/sms|{"systemName":"XD","sceneType":"sales","templateNo":"20170243194243yzy","targetList":[{"mobileNo":"17717561745","params":{"name":"肖德兵","productName":"Wanda Product","amount":"10000"}},{"mobileNo":"15026465806","params":{ "name":"李中将","productName":"Wanda Product","amount":"10000"}}]}|messageUUID|000000|成功|11|