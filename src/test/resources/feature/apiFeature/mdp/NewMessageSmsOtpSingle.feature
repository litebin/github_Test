# language: zh-CN
@all_test
功能: 新OTP单接口/message/sms/otp
  场景大纲:MDP-1237/MDP-2363验证otp接口发送短信成功模版带参数
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
    那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查单接口调用产生的数据库表sms_request_record中列send_status的值为<columnValue1>
    并且检查单接口调用产生的数据库表sms_routing_record中列send_status的值为<columnValue2>
    并且检查单接口调用产生的数据库表sms_send_record中列send_status的值为<columnValue3>
    例子:
      |name|path|param|messageUUID|statusCode|codeValue|messageValue|columnValue1|columnValue2|columnValue3|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|messageUUID|200|000000|成功|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|11|
      |mdp|/message/sms/otp|{"systemName":"jmeter_mengwang","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171048141548zhq","params":{"Name":"赵淑英","称呼":"女士"}}|messageUUID|200|000000|成功|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|11|
      |mdp|/message/sms/otp|{"systemName":"jmeter_welink","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171059140659nht","params":{"Name":"赵淑英","称呼":"女士"}}|messageUUID|200|000000|成功|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|11|
      |mdp|/message/sms/otp|{"systemName":"jmeter_honglian95","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171010141010xyk","params":{"Name":"赵淑英","称呼":"女士"}}|messageUUID|200|000000|成功|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|11|
      |mdp|/message/sms/otp|{"systemName":"jmeter_chuanglan","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171054141254fvw","params":{"Name":"赵淑英","称呼":"女士"}}|messageUUID|200|000000|成功|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|11|

  场景大纲:MDP-1248验证otp接口发送短信成功接口参数params为空，模版带参数
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
    那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查单接口调用产生的数据库表sms_request_record中列send_status的值为<columnValue1>
    并且检查单接口调用产生的数据库表sms_routing_record中列send_status的值为<columnValue2>
    并且检查单接口调用产生的数据库表sms_send_record中列send_status的值为<columnValue3>
    例子:
      |name |path|param|messageUUID|statusCode|codeValue|messageValue|length|columnValue1|columnValue2|columnValue3|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{}}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|

  场景大纲:MDP-1248验证otp接口发送短信成功接口参数params不匹配，模版带参数，
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
    那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查单接口调用产生的数据库表sms_request_record中列send_status的值为<columnValue1>
    并且检查单接口调用产生的数据库表sms_routing_record中列send_status的值为<columnValue2>
    并且检查单接口调用产生的数据库表sms_send_record中列send_status的值为<columnValue3>
    例子:
      |name |path|param|messageUUID|statusCode|codeValue|messageValue|length|columnValue1|columnValue2|columnValue3|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"testContent":"新otp单一接口"}}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|

  场景大纲:MDP-1247验证otp接口参数params为空，模版不带参数，接口返回正常，短信发送成功
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
    那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查单接口调用产生的数据库表sms_request_record中列send_status的值为<columnValue1>
    并且检查单接口调用产生的数据库表sms_routing_record中列send_status的值为<columnValue2>
    并且检查单接口调用产生的数据库表sms_send_record中列send_status的值为<columnValue3>
    例子:
      |name |path|param|messageUUID|statusCode|codeValue|messageValue|length|columnValue1|columnValue2|columnValue3|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171007173207yae","params":{}}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|

  场景大纲:MDP-1253验证otp接口不能发送营销类短信
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"testSales","params":{"testContent":"新otp单一接口"}}|400|200000|模板[testSales]不存在或状态不可用|11|

  场景大纲:MDP-1253验证otp接口不能发送通知类短信
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"testSystem","params":{"testContent":"新otp单一接口"}}|400|200000|模板[testSystem]不存在或状态不可用|11|


  场景大纲:MDP-1252验证otp接口参数systemName和templateNo不匹配
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    #那么检查接口是否返回正确<code>
    #那么检查接口是否返回正确<message>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20170656164556ubn","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|模板[20170656164556ubn]不存在或状态不可用|11|

  场景大纲:MDP-1251验证otp接口参数requestTime长度小于10位，接口返回错误
    #需要检查数据库
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|时间格式应为10或13位整数|9|

  场景大纲:MDP-1250 验证otp接口参数requestTime长度大于13位，接口返回200000，短信发送失败
    #需要检查数据库
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|时间格式应为10或13位整数|14|

  场景大纲:MDP-1246验证otp接口参数templateNo长度超过60，接口返回错误，接口返回错误
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
   # 那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"123adfjgef123adfjgef123adfjgef123adfjgef123adfjgef123adfjgef12","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|length must be between 1 and 60|11|

  场景大纲:MDP-1245验证otp接口参数templateNo为空，接口返回错误
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|length must be between 1 and 60|11|

  场景大纲:MDP-345系统编号systemName为空，接口返回异常
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
 #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|length must be between 1 and 60|11|


  场景大纲:MDP-1244验证otp接口参数mobileNo为非11（12）位数字的号码
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"185165528250","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|手机号码必须为11位数字|11|

  场景大纲:MDP-1244验证otp接口参数mobileNo为非11（10）位数字的号码
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"1851655282","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|手机号码必须为11位数字|11|

  场景大纲:MDP-1244验证otp接口参数mobileNo为非1开头的11位数字的号码
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"28516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|手机号码必须为11位数字|11|

  场景大纲:MDP-1249验证otp接口参数requestTime为空，接口返回错误
    假如项目<name>做只包含uuid参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|时间格式应为10或13位整数|


  场景大纲:MDP-1243验证otp接口参数mobileNo为空，接口返回错误
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|手机号码必须为11位数字|11|

  场景大纲:MDP-1242验证otp接口参数requestId与之前重复，不校验重复性第一步
   #需检查数据库
    假如项目<name>做包含time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
    那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查单接口调用产生的数据库表sms_request_record中列send_status的值为<columnValue1>
    并且检查单接口调用产生的数据库表sms_routing_record中列send_status的值为<columnValue2>
    并且检查单接口调用产生的数据库表sms_send_record中列send_status的值为<columnValue3>
    例子:
      |name |path|param|messageUUID|statusCode|codeValue|messageValue|length|columnValue1|columnValue2|columnValue3|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|

  场景大纲:MDP-1242验证otp接口参数requestId与之前重复，不校验重复性第二步
   #需检查数据库
    假如项目<name>做包含time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
    那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查单接口调用产生的数据库表sms_request_record中列send_status的值为<columnValue1>
    并且检查单接口调用产生的数据库表sms_routing_record中列send_status的值为<columnValue2>
    并且检查单接口调用产生的数据库表sms_send_record中列send_status的值为<columnValue3>
    例子:
      |name |path|param|messageUUID|statusCode|codeValue|messageValue|length|columnValue1|columnValue2|columnValue3|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|

  场景大纲:MDP-1240验证otp接口参数requestId为空，接口返回错误
    假如项目<name>做包含requestID为空参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|length must be between 1 and 60|

  场景大纲:MDP-1241验证otp接口参数requestId长度超过60，接口返回错误
    假如项目<name>做包含requestID长度超过60单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/sms/otp|{"systemName":"jmeter_ems","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|length must be between 1 and 60|

  场景大纲:MDP-1239验证otp接口参数systemName长度超过60，接口返回错误
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_emsjmeter_emsjmeter_emsjmeter_emsjmeter_emsjmeter_ems12","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|length must be between 1 and 60|11|

  场景大纲:MDP-1238验证otp接口参数systemName为空，接口返回错误
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    #那么检查接口是否返回正确<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms/otp|{"systemName":"jmeter_emsjmeter_emsjmeter_emsjmeter_emsjmeter_emsjmeter_ems12","sceneType":"新otp单一接口","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"赵淑英","称呼":"女士"}}|400|200000|length must be between 1 and 60|11|

