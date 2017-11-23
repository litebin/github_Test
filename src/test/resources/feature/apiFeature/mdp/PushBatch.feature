# language: zh-CN
@all_test
功能: 批量推送接口/push/batch/send  部门代码：wealthapp

  场景大纲:MDP-2291 验证APP批量推送接口systemCode参数值的为空，接口返回正常-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"","batchCode":"814606a4-57b4-465f-a0e3-7bec2839f133","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"http://10.214.168.53/big/big5.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"cada7c6d-6a14-4adc-a58f-f279dfe4af3b","userNo":"17717561745","templateVariables":{"testContent":"batchPush1验证APP批量推送接口systemCode参数值的长度小于60，接口返回正常"}},{"requestId":"cd57f31e-0640-4116-a766-b4d3516c9dde","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|系统编号长度不能超过60,且不能为空|

  场景大纲:MDP-2291 验证APP批量推送接口systemCode参数值的不传，接口返回正常-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"batchCode":"814606a4-57b4-465f-a0e3-7bec2839f133","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"http://10.214.168.53/big/big5.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"cada7c6d-6a14-4adc-a58f-f279dfe4af3b","userNo":"17717561745","templateVariables":{"testContent":"batchPush1验证APP批量推送接口systemCode参数值的长度小于60，接口返回正常"}},{"requestId":"cd57f31e-0640-4116-a766-b4d3516c9dde","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|系统编号长度不能超过60,且不能为空|

  场景大纲:MDP-2298 验证APP批量推送接口systemCode参数值的长度大于60，接口返回正常-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","batchCode":"814606a4-57b4-465f-a0e3-7bec2839f133","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"http://10.214.168.53/big/big5.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"cada7c6d-6a14-4adc-a58f-f279dfe4af3b","userNo":"17717561745","templateVariables":{"testContent":"batchPush1验证APP批量推送接口systemCode参数值的长度小于60，接口返回正常"}},{"requestId":"cd57f31e-0640-4116-a766-b4d3516c9dde","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|系统编号长度不能超过60,且不能为空|

  场景大纲:MDP-2299 验证APP批量推送接口systemCode参数值的长度等于60，接口返回正常-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","batchCode":"814606a4-57b4-465f-a0e3-7bec2839f133","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"http://10.214.168.53/big/big5.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"cada7c6d-6a14-4adc-a58f-f279dfe4af3b","userNo":"17717561745","templateVariables":{"testContent":"batchPush1验证APP批量推送接口systemCode参数值的长度小于60，接口返回正常"}},{"requestId":"cd57f31e-0640-4116-a766-b4d3516c9dde","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|模板[testPush1]不存在或状态不可用|

  场景大纲:	MDP-2300  验证APP批量推送接口systemCode参数值的长度小于60，接口返回正常-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","batchCode":"814606a4-57b4-465f-a0e3-7bec2839f133","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"http://10.214.168.53/big/big5.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"cada7c6d-6a14-4adc-a58f-f279dfe4af3b","userNo":"17717561745","templateVariables":{"testContent":"batchPush1验证APP批量推送接口systemCode参数值的长度小于60，接口返回正常"}},{"requestId":"cd57f31e-0640-4116-a766-b4d3516c9dde","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|模板[testPush1]不存在或状态不可用|

  场景大纲:MDP-2292 	验证APP批量推送接口batchCode参数为空，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small4.png","bigImageFileUri":"http://10.214.168.53/big/big4.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"06b8ac13-a238-4cdd-b1d1-95d3bc8ab6ec","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"3a5ae94b-f5d4-406e-bfd2-b32f6777766f","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|批次号长度不能超过60,且不能为空|

  场景大纲:MDP-2292 	验证APP批量推送接口batchCode参数不传，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small4.png","bigImageFileUri":"http://10.214.168.53/big/big4.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"06b8ac13-a238-4cdd-b1d1-95d3bc8ab6ec","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"3a5ae94b-f5d4-406e-bfd2-b32f6777766f","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|批次号长度不能超过60,且不能为空|

  场景大纲:MDP-2301	  验证batchCode参数值的长度大于60，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"http://10.214.168.53/big/big5.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"cada7c6d-6a14-4adc-a58f-f279dfe4af3b","userNo":"17717561745","templateVariables":{"testContent":"batchPush1验证APP批量推送接口systemCode参数值的长度小于60，接口返回正常"}},{"requestId":"cd57f31e-0640-4116-a766-b4d3516c9dde","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|批次号长度不能超过60,且不能为空|

  场景大纲:	MDP-2302	验证batchCode参数值的长度等于60，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"http://10.214.168.53/big/big5.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"cada7c6d-6a14-4adc-a58f-f279dfe4af3b","userNo":"17717561745","templateVariables":{"testContent":"batchPush1验证APP批量推送接口systemCode参数值的长度小于60，接口返回正常"}},{"requestId":"cd57f31e-0640-4116-a766-b4d3516c9dde","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2303	验证batchCode参数值的长度小于60，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"http://10.214.168.53/big/big5.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"cada7c6d-6a14-4adc-a58f-f279dfe4af3b","userNo":"17717561745","templateVariables":{"testContent":"batchPush1验证APP批量推送接口systemCode参数值的长度小于60，接口返回正常"}},{"requestId":"cd57f31e-0640-4116-a766-b4d3516c9dde","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2304	验证batchCode参数值与之前的重复，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"repeat","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"http://10.214.168.53/big/big5.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"cada7c6d-6a14-4adc-a58f-f279dfe4af3b","userNo":"17717561745","templateVariables":{"testContent":"batchPush1验证APP批量推送接口systemCode参数值的长度小于60，接口返回正常"}},{"requestId":"cd57f31e-0640-4116-a766-b4d3516c9dde","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|批次号重复|

  场景大纲:MDP-2294	验证APP批量推送接口requestId为空，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"c4d67f6a-5913-455b-9a35-134a97680331","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"http://10.214.168.53/big/big5.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"165eff93-74e6-4960-89f3-5c01fbc9768a","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|requestId 不能为空|

  场景大纲:MDP-2294	验证APP批量推送接口requestId为空，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"fb98fe10-0638-40cd-984a-d4f4d5247220","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small7.png","bigImageFileUri":"http://10.214.168.53/big/big7.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"3ed52e52-c2be-4d57-8c9f-593f8317e8cb","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|requestId 不能为空|

  场景大纲:MDP-2308	  验证APP批量推送接口requestId的长度大于60，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"c86b79d2-0eb5-4cbb-9f0f-41858f21c529","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small3.png","bigImageFileUri":"http://10.214.168.53/big/big3.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"kw4svepsloplvva0iybxn5hv6n4lzav9114xuiauu6aldr9da2c75i9bls6zc","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"dbcf1166-703d-4930-a3c4-69f9888418ff","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|requestId 长度不能超过60位|

  场景大纲:	MDP-2309	验证APP批量推送接口requestId的长度等于60，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ba5bdaa6-f47e-415e-92ee-e95c9d935b77","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small4.png","bigImageFileUri":"http://10.214.168.53/big/big4.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"goeo1xuqe4vyei57uzgiqfn6pz3qdoju3x29kucnzx5vzav8130ymhdeqvrm","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"354d76f4-7757-43c4-896f-c42f78fb6f8f","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2310	验证APP批量推送接口requestId的长度小于60，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"9c28aadd-5c59-4e9f-83f6-f7e9710078ac","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small7.png","bigImageFileUri":"http://10.214.168.53/big/big7.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"a00e4k0vevut3ipp3l9uyfp18xmtlw7cm8y42ram61s9wv8ffbjojha4uv1","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"ab23bb11-5611-4099-a01f-eef73858f878","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2311	验证APP批量推送接口contentAvailable参数值为true，为静态推送，推送后，APP收到消息时没有提示-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
  无法校验app有无提示，这里仅发送请求，并对接口响应做校验
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"23f55063-b73b-4ee3-b488-9d5154206f23","contentAvailable":"true","smallImageFileUri":"http://10.214.168.53/small/small3.png","bigImageFileUri":"http://10.214.168.53/big/big3.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"f9a5f09f-399a-4359-b95b-61185e8c8c5a","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"007fb085-9c81-48b4-b369-545f45bd3eb2","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2312	验证APP批量推送接口contentAvailable参数值为false，不为静态推送，推送后，APP收到消息时有提示-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
    无法校验app有无提示，这里仅发送请求，并对接口响应做校验
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"23f55063-b73b-4ee3-b488-9d5154206f23","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small3.png","bigImageFileUri":"http://10.214.168.53/big/big3.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"f9a5f09f-399a-4359-b95b-61185e8c8c5a","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"007fb085-9c81-48b4-b369-545f45bd3eb2","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:MDP-2314	验证APP批量推送接口smallImageFileUri参数的长度大于255，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"16d83055-ce00-4d0a-a9b8-72fc145dd6a6","contentAvailable":"false","smallImageFileUri":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","bigImageFileUri":"http://10.214.168.53/big/big4.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"eb5f52db-aba3-45da-98d1-ebc802184d2e","userNo":"17717561745","templateVariables":{"testContent":"a"}},{"requestId":"226ba171-40d2-4b64-97a0-7e4a409bb63c","userNo":"17717561745","templateVariables":{"testContent":"a"}}]}|400|200000|length must be between 0 and 255|

  场景大纲:MDP-2315	验证APP批量推送接口smallImageFileUri参数的长度等于255，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"16d83055-ce00-4d0a-a9b8-72fc145dd6a6","contentAvailable":"false","smallImageFileUri":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","bigImageFileUri":"http://10.214.168.53/big/big4.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"eb5f52db-aba3-45da-98d1-ebc802184d2e","userNo":"17717561745","templateVariables":{"testContent":"a"}},{"requestId":"226ba171-40d2-4b64-97a0-7e4a409bb63c","userNo":"17717561745","templateVariables":{"testContent":"a"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2316	验证APP批量推送接口smallImageFileUri参数的长度小于255，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"16d83055-ce00-4d0a-a9b8-72fc145dd6a6","contentAvailable":"false","smallImageFileUri":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","bigImageFileUri":"http://10.214.168.53/big/big4.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"eb5f52db-aba3-45da-98d1-ebc802184d2e","userNo":"17717561745","templateVariables":{"testContent":"a"}},{"requestId":"226ba171-40d2-4b64-97a0-7e4a409bb63c","userNo":"17717561745","templateVariables":{"testContent":"a"}}]}|200|000000|提交成功|

  场景大纲:MDP-2318	验证APP批量推送接口bigImageFileUri参数的长度大于255，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ee20362c-0c99-425e-9d3a-582723483226","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"10b87516-94b9-4a39-81a9-37aa6da2b284","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"04d73b32-91d8-46b1-bc0d-bc8ccdafd3ee","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|length must be between 0 and 255|

  场景大纲:MDP-2319	验证APP批量推送接口bigImageFileUri参数的长度等于255，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ee20362c-0c99-425e-9d3a-582723483226","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"10b87516-94b9-4a39-81a9-37aa6da2b284","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"04d73b32-91d8-46b1-bc0d-bc8ccdafd3ee","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:MDP-2320	验证APP批量推送接口bigImageFileUri参数的长度小于255，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ee20362c-0c99-425e-9d3a-582723483226","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small5.png","bigImageFileUri":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"10b87516-94b9-4a39-81a9-37aa6da2b284","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"04d73b32-91d8-46b1-bc0d-bc8ccdafd3ee","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:MDP-2322	验证APP批量推送接口platform参数值为all时，目标用户中的ios和安卓用户都可收到消息推送-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"4744c28a-834f-40ef-85fc-dd01c570b5bf","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"1ae109c6-f507-4602-8f64-9399320426d2","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"0f033327-497e-429b-a35f-3af8f8f2a00a","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2323	验证APP批量推送接口platform参数值为ios时，目标用户中的ios用户可收到消息推送，安卓用户收不到-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
    这里只校验了接口响应
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"4744c28a-834f-40ef-85fc-dd01c570b5bf","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"IOS","userList":[{"requestId":"1ae109c6-f507-4602-8f64-9399320426d2","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"0f033327-497e-429b-a35f-3af8f8f2a00a","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2324	验证APP批量推送接口platform参数值为android时，目标用户中的android用户可收到消息推送，ios用户收不到-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
  这里只校验了接口响应
  |name |path|param|statusCode|codeValue|messageValue|
  |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"4744c28a-834f-40ef-85fc-dd01c570b5bf","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ANDROID","userList":[{"requestId":"1ae109c6-f507-4602-8f64-9399320426d2","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"0f033327-497e-429b-a35f-3af8f8f2a00a","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:MDP-2326	验证APP批量推送接口clientAction参数值为DEFAULT，推送后APP收到消息的打开方式为启动APP-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
  这里只校验了接口响应
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"4e34861a-4231-4cd1-a238-a39c010c4256","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"DEFAULT","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"d4988645-132c-448f-b559-17150b915561","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"6861444e-bace-47b1-b1e9-87aacd462706","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:MDP-2327	验证APP批量推送接口clientAction参数值为OPEN_LINK，不传link参数，会报错400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
  |name |path|param|statusCode|codeValue|messageValue|
  |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"4e34861a-4231-4cd1-a238-a39c010c4256","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"d4988645-132c-448f-b559-17150b915561","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"6861444e-bace-47b1-b1e9-87aacd462706","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|连接地址不能为空|

  场景大纲:MDP-2329	验证APP批量推送接口link参数值长度大于255，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"8166c13f-6de7-41b6-8cb8-f06863c8a89a","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"bf7cb696-5d92-4eee-b027-1c6f941312ae","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"28c5fc12-eb6a-4f07-b62b-223c0b62c3f7","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|length must be between 0 and 255|

  场景大纲:MDP-2330	验证APP批量推送接口link参数值长度等于255，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"8166c13f-6de7-41b6-8cb8-f06863c8a89a","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"bf7cb696-5d92-4eee-b027-1c6f941312ae","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"28c5fc12-eb6a-4f07-b62b-223c0b62c3f7","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:MDP-2331	验证APP批量推送接口link参数值长度小于255，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"8166c13f-6de7-41b6-8cb8-f06863c8a89a","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"bf7cb696-5d92-4eee-b027-1c6f941312ae","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"28c5fc12-eb6a-4f07-b62b-223c0b62c3f7","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:MDP-2297	验证APP批量推送接口templateNo参数为空，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字段中是否包含<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"9dea4364-6558-4874-bc7f-c3971808f53c","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","templateNo":"","platform":"ALL","userList":[{"requestId":"81554747-5196-4ed8-92f4-022b0a110df6","userNo":"17717561745","templateVariables":{"testContent":"b1"}},{"requestId":"e528d52b-b529-4726-80a1-6c5ade7149f4","userNo":"17717561745","templateVariables":{"testContent":"b2"}}]}|400|200000|模板编号长度不能超过60,且不能为空|

  场景大纲:MDP-2297	验证APP批量推送接口templateNo参数不传，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字段中是否包含<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"9dea4364-6558-4874-bc7f-c3971808f53c","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com","platform":"ALL","userList":[{"requestId":"81554747-5196-4ed8-92f4-022b0a110df6","userNo":"17717561745","templateVariables":{"testContent":"b1"}},{"requestId":"e528d52b-b529-4726-80a1-6c5ade7149f4","userNo":"17717561745","templateVariables":{"testContent":"b2"}}]}|400|200000|模板编号长度不能超过60,且不能为空|

  场景大纲:	MDP-2332	验证APP批量推送接口templateNo参数值的长度大于60，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字段中是否包含<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ae2e0ad2-cbc6-44a9-a978-993af7e42ab2","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small6.png","bigImageFileUri":"http://10.214.168.53/big/big6.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","platform":"ALL","userList":[{"requestId":"7a68f715-a4f9-42ae-9ad1-f62284ef7a2d","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"4a454af8-e697-44b2-b76e-fe3e0217614a","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|模板编号长度不能超过60,且不能为空|

  场景大纲:MDP-2333	验证APP批量推送接口templateNo参数值的长度等于60，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ae2e0ad2-cbc6-44a9-a978-993af7e42ab2","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small6.png","bigImageFileUri":"http://10.214.168.53/big/big6.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","platform":"ALL","userList":[{"requestId":"7a68f715-a4f9-42ae-9ad1-f62284ef7a2d","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"4a454af8-e697-44b2-b76e-fe3e0217614a","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|模板[aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa]不存在或状态不可用|

  场景大纲:	MDP-2334	验证APP批量推送接口templateNo参数值的长度小于60，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ae2e0ad2-cbc6-44a9-a978-993af7e42ab2","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small6.png","bigImageFileUri":"http://10.214.168.53/big/big6.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","platform":"ALL","userList":[{"requestId":"7a68f715-a4f9-42ae-9ad1-f62284ef7a2d","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"4a454af8-e697-44b2-b76e-fe3e0217614a","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|模板[aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa]不存在或状态不可用|

  场景大纲:	MDP-2335	验证APP批量推送接口templateNo参数值与systemCode不匹配，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ae2e0ad2-cbc6-44a9-a978-993af7e42ab2","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small6.png","bigImageFileUri":"http://10.214.168.53/big/big6.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","platform":"ALL","userList":[{"requestId":"7a68f715-a4f9-42ae-9ad1-f62284ef7a2d","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"4a454af8-e697-44b2-b76e-fe3e0217614a","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|模板[aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa]不存在或状态不可用|

  场景大纲:MDP-2293	验证APP批量推送接口userList为空，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ae2e0ad2-cbc6-44a9-a978-993af7e42ab2","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small6.png","bigImageFileUri":"http://10.214.168.53/big/big6.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[]}|400|200000|发送目标不能不能为空|

  场景大纲:MDP-2293	验证APP批量推送接口userList不传，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ae2e0ad2-cbc6-44a9-a978-993af7e42ab2","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small6.png","bigImageFileUri":"http://10.214.168.53/big/big6.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL"}|400|200000|发送目标不能不能为空|


  场景大纲:	MDP-2295	验证APP批量推送接口contentAvailable参数不传，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"ae2e0ad2-cbc6-44a9-a978-993af7e42ab2","smallImageFileUri":"http://10.214.168.53/small/small6.png","bigImageFileUri":"http://10.214.168.53/big/big6.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"7a68f715-a4f9-42ae-9ad1-f62284ef7a2d","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"4a454af8-e697-44b2-b76e-fe3e0217614a","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2296	验证APP批量推送接口platform参数为空，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"0d9892e6-f334-45a8-97b5-c5405fb4a026","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small3.png","bigImageFileUri":"http://10.214.168.53/big/big3.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","userList":[{"requestId":"c37b217e-b5ce-4e72-bd68-67e48d31de8a","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"839fa1bd-4712-492e-86fb-bb8f23183685","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|发送目标平台为空|


  场景大纲:验证APP批量推送接口userNo为空，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"0d9892e6-f334-45a8-97b5-c5405fb4a026","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small3.png","bigImageFileUri":"http://10.214.168.53/big/big3.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform": "ALL","userList":[{"requestId":"c37b217e-b5ce-4e72-bd68-67e48d31de8a","userNo":"","templateVariables":{"testContent":"batchPush1"}},{"requestId":"839fa1bd-4712-492e-86fb-bb8f23183685","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|userNo 不能为空|

  场景大纲:验证APP批量推送接口userNo不传，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"0d9892e6-f334-45a8-97b5-c5405fb4a026","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small3.png","bigImageFileUri":"http://10.214.168.53/big/big3.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform": "ALL","userList":[{"requestId":"c37b217e-b5ce-4e72-bd68-67e48d31de8a","templateVariables":{"testContent":"batchPush1"}},{"requestId":"839fa1bd-4712-492e-86fb-bb8f23183685","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|userNo 不能为空|

  场景大纲:	MDP-2305	验证APP批量推送接口的发送目标userList中的userno的数量为大于100时，接口返回400-wealthapp－/push/batch/send
    假如项目<name>做<num>个手机号码的批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |num|path|param|statusCode|codeValue|messageValue|
      |mdp  |101|/push/batch/send|{"systemCode":"wealthapp","batchCode":"bf4acf7e-b86d-40b0-b66f-b81de529495b","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"92d4a5b9-e42c-489d-a826-f8e604e735a9","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"e13da476-c79a-4c17-8798-d30a0ee53517","userNo":"15026465806","templateVariables":{"testContent":"batchPush2"}}]}|400|200000|一次最多推送100条，至少一条消息|

  场景大纲:	MDP-2306	验证APP批量推送接口的发送目标userList中的userno的数量为等于100时，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做<num>个手机号码的批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |num|path|param|statusCode|codeValue|messageValue|
      |mdp  |100|/push/batch/send|{"systemCode":"wealthapp","batchCode":"bf4acf7e-b86d-40b0-b66f-b81de529495b","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"92d4a5b9-e42c-489d-a826-f8e604e735a9","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"e13da476-c79a-4c17-8798-d30a0ee53517","userNo":"15026465806","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2307	验证APP批量推送接口的发送目标userList中的userno的数量为小于100时，接口返回200-wealthapp－/push/batch/send
    假如项目<name>做<num>个手机号码的批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |num|path|param|statusCode|codeValue|messageValue|
      |mdp  |99|/push/batch/send|{"systemCode":"wealthapp","batchCode":"bf4acf7e-b86d-40b0-b66f-b81de529495b","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"92d4a5b9-e42c-489d-a826-f8e604e735a9","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"e13da476-c79a-4c17-8798-d30a0ee53517","userNo":"15026465806","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|

  场景大纲:	MDP-2336  验证APP批量推送接口推送成功后，数据进入mdp_push_batch、push_record，pushdata下的push_record-wealthapp－/push/batch/send
    假如项目<name>做<num>个手机号码的批量推送接口调用请求数据准备<path>和<param>
    当开始执行post请求然后等待60秒
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    并且检查本次推送产生的记录在数据库表mdpdata.mdp_push_batch中列push_state的值为<columnValue1>
    并且检查本次推送产生的记录在数据库表mdpdata.push_record中列status的值为<columnValue2>
    并且检查本次推送产生的记录在数据库表pushdata.push_record中列status的值为<columnValue3>
    例子:
      |name |num|path|param|statusCode|codeValue|messageValue|columnValue1|columnValue2|columnValue3|
      |mdp  |2|/push/batch/send|{"systemCode":"wealthapp","batchCode":"bf4acf7e-b86d-40b0-b66f-b81de529495b","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"OPEN_LINK","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"92d4a5b9-e42c-489d-a826-f8e604e735a9","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"e13da476-c79a-4c17-8798-d30a0ee53517","userNo":"15026465806","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|PUSH_END|SUCCESS|1|

  场景大纲:	MDP-2337  验证APP批量推送接口推送给未注册APP的用户，数据进入mdp_push_batch、push_record，pushdata下的push_record-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当开始执行post请求然后等待60秒
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    并且检查本次推送产生的记录在数据库表mdpdata.mdp_push_batch中列push_state的值为<columnValue1>
    并且检查本次推送产生的记录在数据库表mdpdata.push_record中列status的值为<columnValue2>
    并且检查本次推送产生的记录在数据库表pushdata.push_record中列status的值为<columnValue3>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|columnValue1|columnValue2|columnValue3|
      |mdp  |/push/batch/send|{"systemCode":"wealthapp","batchCode":"4e34861a-4231-4cd1-a238-a39c010c4256","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"DEFAULT","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"d4988645-132c-448f-b559-17150b915561","userNo":"13012345678","templateVariables":{"testContent":"batchPush1"}},{"requestId":"6861444e-bace-47b1-b1e9-87aacd462706","userNo":"13022345678","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|PUSH_END|FAILED|2|

  场景大纲:MDP-2341验证APP批量推送接口推送5个一致的手机号，推送后，对应手机号的APP可以收到5条消息-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当开始执行post请求然后等待60秒
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    并且检查本次推送产生的记录在数据库表pushdata.push_record中列status的值为<columnValue3>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|columnValue3|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"4e34861a-4231-4cd1-a238-a39c010c4256","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"DEFAULT","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"d4988645-132c-448f-b559-17150b915561","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"6861444e-bace-47b1-b1e9-87aacd462706","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}},{"requestId":"6861444e-bace-47b1-b1e9-87aacd462706","userNo":"17717561745","templateVariables":{"testContent":"batchPush3"}},{"requestId":"6861444e-bace-47b1-b1e9-87aacd462706","userNo":"17717561745","templateVariables":{"testContent":"batchPush4"}},{"requestId":"6861444e-bace-47b1-b1e9-87aacd462706","userNo":"17717561745","templateVariables":{"testContent":"batchPush5"}}]}|200|000000|提交成功|1|

  场景大纲:MDP-2340 验证APP批量推送接口的接口返回参数的完整性-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字段中是否包含code
    并且检查接口响应字段中是否包含message
    并且检查接口响应字段中是否包含batchCode
    并且检查接口响应字段中是否包含results
    并且检查接口响应字段中是否包含suceeded
    例子:
      |name |path|param|statusCode|
      |mdp|/push/batch/send|{"systemCode":"wealthapp","batchCode":"4e34861a-4231-4cd1-a238-a39c010c4256","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"DEFAULT","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"d4988645-132c-448f-b559-17150b915561","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"6861444e-bace-47b1-b1e9-87aacd462706","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|

  场景大纲:	MDP-2328  验证APP批量推送接口clientAction参数值为OPEN_LINK，link配置好对应地址，推送后，点击收到的消息可看到配置的链接地址-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口调用请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    并且检查本次推送产生的记录在数据库表mdpdata.mdp_push_batch中列link的值为<columnValue1>
    例子:
    仅检查了batch表落库情况
      |name |path|param|statusCode|codeValue|messageValue|columnValue1|
      |mdp  |/push/batch/send|{"systemCode":"wealthapp","batchCode":"4e34861a-4231-4cd1-a238-a39c010c4256","contentAvailable":"false","smallImageFileUri":"http://10.214.168.53/small/small2.png","bigImageFileUri":"http://10.214.168.53/big/big2.png","clientAction":"DEFAULT","link":"http://www.baidu.com",	"templateNo":"testPush1","platform":"ALL","userList":[{"requestId":"d4988645-132c-448f-b559-17150b915561","userNo":"17717561745","templateVariables":{"testContent":"batchPush1"}},{"requestId":"6861444e-bace-47b1-b1e9-87aacd462706","userNo":"17717561745","templateVariables":{"testContent":"batchPush2"}}]}|200|000000|提交成功|http://www.baidu.com|

  场景大纲:MDP-2325 验证APP批量推送接口platform参数值与推送用户的所属平台不匹配时，如platform为ios，目标用户为android，则用户收不到消息，push_record中错误信息显示为设备类型不匹配-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口的调用请求数据准备<path>和
    """
    {
  "systemCode": "wealthapp",
  "batchCode": "73af9d6f-3a7d-4afc-bc9c-c3054f7d7f56",
  "contentAvailable": "false",
  "smallImageFileUri": "http://10.214.168.53/small/small1.png",
  "bigImageFileUri": "http://10.214.168.53/big/big1.png",
  "clientAction": "OPEN_LINK",
  "link":"http://www.baidu.com",
  "templateNo": "testPush1",
  "platform": "IOS",
  "userList": [
  {
  "requestId": "e60d0183-b27e-46a8-b686-e124eb7cfd4b",
  "userNo": "17717561745",
  "templateVariables": {
    "testContent": "batchPush1"
    }
  }
  ]
}
"""
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    并且检查本次推送产生的记录在数据库表pushdata.push_record中列fail_reason的值为<columnValue1>
    例子:
      |name |path|statusCode|codeValue|messageValue|columnValue1|
      |mdp  |/push/batch/send|200|000000|提交成功|class com.wanda.mdp.push.exceptions.NoDeviceOnlineException:设备不匹配|

  场景大纲:MDP-2321 验证APP批量推送接口bigImageFileUri参数值为正常的图片链接，推送后，在APP的消息盒子中可看到大背景图-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口的调用请求数据准备<path>和
    """
    {
  "systemCode": "wealthapp",
  "batchCode": "73af9d6f-3a7d-4afc-bc9c-c3054f7d7f56",
  "contentAvailable": "false",
  "smallImageFileUri": "http://10.214.168.53/small/small1.png",
  "bigImageFileUri": "http://10.214.168.53/big/big1.png",
  "clientAction": "OPEN_LINK",
  "link":"http://www.baidu.com",
  "templateNo": "testPush1",
  "platform": "ALL",
  "userList": [
  {
  "requestId": "e60d0183-b27e-46a8-b686-e124eb7cfd4b",
  "userNo": "17717561745",
  "templateVariables": {
    "testContent": "batchPush1"
    }
  }
  ]
}
"""
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    并且检查本次推送产生的记录在数据库表mdpdata.mdp_push_batch中列big_image_file的值为<columnValue1>
    例子:
    仅检查了batch表落库情况
      |name |path|statusCode|codeValue|messageValue|columnValue1|
      |mdp  |/push/batch/send|200|000000|提交成功|http://10.214.168.53/big/big1.png|

  场景大纲:MDP-2317 验证APP批量推送接口smallImageFileUri参数为正常的小图片链接，推送后，在APP的消息中可以看到小图片-wealthapp－/push/batch/send
    假如项目<name>做批量推送接口的调用请求数据准备<path>和
    """
    {
  "systemCode": "wealthapp",
  "batchCode": "73af9d6f-3a7d-4afc-bc9c-c3054f7d7f56",
  "contentAvailable": "false",
  "smallImageFileUri": "http://10.214.168.53/small/small1.png",
  "bigImageFileUri": "http://10.214.168.53/big/big1.png",
  "clientAction": "OPEN_LINK",
  "link":"http://www.baidu.com",
  "templateNo": "testPush1",
  "platform": "ALL",
  "userList": [
  {
  "requestId": "e60d0183-b27e-46a8-b686-e124eb7cfd4b",
  "userNo": "17717561745",
  "templateVariables": {
    "testContent": "batchPush1"
    }
  }
  ]
}
"""
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    并且检查本次推送产生的记录在数据库表mdpdata.mdp_push_batch中列small_image_file的值为<columnValue1>
    例子:
    仅检查了batch表落库情况
      |name |path|statusCode|codeValue|messageValue|columnValue1|
      |mdp  |/push/batch/send|200|000000|提交成功|http://10.214.168.53/small/small1.png|


  场景大纲:批量推送接口-wealthapp－/push/batch/send
    * 用例标题为<caseTitle>-wealthapp－/push/batch/send
    * 项目mdp做接口/push/batch/send的请求参数初始化
    """
    {
  "systemCode": "wealthapp",
  "batchCode": "73af9d6f-3a7d-4afc-bc9c-c3054f7d7f56",
  "contentAvailable": "false",
  "smallImageFileUri": "http://10.214.168.53/small/small1.png",
  "bigImageFileUri": "http://10.214.168.53/big/big1.png",
  "clientAction": "OPEN_LINK",
  "link":"http://www.baidu.com",
  "templateNo": "testPush1",
  "platform": "ALL",
  "userList": [
  {
  "requestId": "e60d0183-b27e-46a8-b686-e124eb7cfd4b",
  "userNo": "17717561745",
  "templateVariables": {
    "testContent": "batchPush1-android"
    }
  },
    {
  "requestId": "e60d0183-b27e-46a8-b686-e124eb7cfd4b",
  "userNo": "15026465806",
  "templateVariables": {
    "testContent": "batchPush2-IOS"
    }
  }
  ]
}
"""
    * 修改参数——修改类型为<alterType>参数path为<jsonPath>值为<paramValue>
    * 开始执行post请求然后等待60秒
    * 检查接口返回状态码status是<statusCode>
    * 检查接口响应——检查类型为节点值是否等于节点path为$.code预期结果为000000
    * 检查接口响应——检查类型为节点值是否等于节点path为$.message预期结果为提交成功
    * 检查接口响应——检查类型为节点值是否等于节点path为$.suceeded预期结果为true
    * 检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    * 检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    * 检查本次接口调用产生的记录在数据库表mdpdata.push_record中列status的值为SUCCESS,SUCCESS
    * 检查本次接口调用产生的记录在数据库表pushdata.push_record中列status的值为1,1
    例子:
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|caseTitle|
      |指定字符串|$.templateNo|testPush3|200|节点值是否匹配|$.results[0].messageUUID|^\\w{32}$|节点值是否匹配|$.results[1].messageUUID|^\\w{32}$|批量推送-活动精选-ios+android|
      |指定字符串|$.templateNo|testPush2|200|节点值是否匹配|$.results[0].messageUUID|^\\w{32}$|节点值是否匹配|$.results[1].messageUUID|^\\w{32}$|批量推送-平台公告-ios+android|
      |指定字符串|$.templateNo|testPush1|200|节点值是否匹配|$.results[0].messageUUID|^\\w{32}$|节点值是否匹配|$.results[1].messageUUID|^\\w{32}$|批量推送-我的消息-ios+android|
