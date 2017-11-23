  # language: zh-CN
  @all_test
功能: 单接口/message/sms
  场景大纲:MDP-344验证消息类型为OTP即时短信发送成功
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
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_mengwang","mobileNo":"18516552825","templateNo":"20171048141548zhq","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_welink","mobileNo":"18516552825","templateNo":"20171059140659nht","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_honglian95","mobileNo":"18516552825","templateNo":"20171010141010xyk","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_chuanglan","mobileNo":"18516552825","templateNo":"20171054141254fvw","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|

  场景大纲:MDP-333验证消息类型为System即时短信发送成功
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
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"18516552825","templateNo":"20171031085531vun","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"System"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_mengwang","mobileNo":"18516552825","templateNo":"20171059085259uwu","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"System"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_welink","mobileNo":"18516552825","templateNo":"20171044084544tjh","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"System"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_honglian95","mobileNo":"18516552825","templateNo":"20171022083622kpq","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"System"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_chuanglan","mobileNo":"18516552825","templateNo":"20171037084237tot","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"System"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|

  场景大纲:MDP-322验证消息类型为Sales即时短信发送成功
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
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"18516552825","templateNo":"20171047085547fqn","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_mengwang","mobileNo":"18516552825","templateNo":"20171027085327vwa","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_welink","mobileNo":"18516552825","templateNo":"20171043084643pjv","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_honglian95","mobileNo":"18516552825","templateNo":"20171004083704dke","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_chuanglan","mobileNo":"18516552825","templateNo":"20171029084329ugu","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|

  场景大纲:MDP-261校验短信发送内容格式-特殊字符
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
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"18516552825","templateNo":"20171047085547fqn","params":{"testContent":"您好@＃¥％^_^&＊（）｛｝／‘："},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_mengwang","mobileNo":"18516552825","templateNo":"20171027085327vwa","params":{"testContent":"您好@＃¥％^_^&＊（）｛｝／‘："},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_welink","mobileNo":"18516552825","templateNo":"20171043084643pjv","params":{"testContent":"您好@＃¥％^_^&＊（）｛｝／‘："},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_honglian95","mobileNo":"18516552825","templateNo":"20171004083704dke","params":{"testContent":"您好@＃¥％^_^&＊（）｛｝／‘："},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_chuanglan","mobileNo":"18516552825","templateNo":"20171029084329ugu","params":{"testContent":"您好@＃¥％^_^&＊（）｛｝／‘："},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|

  场景大纲:MDP-310手机号添加到黑名单，<senceType>为system通过渠道商welink发送短信失败
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms|{"systemName":"jmeter_welink","mobileNo":"13701672948","templateNo":"20171044084544tjh","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"System"}|400|200000|手机号被列入和名单|11|
#

  场景大纲:MDP-310手机号添加到黑名单，<senceType>为Sales通过渠道商welink发送短信失败
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms|{"systemName":"jmeter_welink","mobileNo":"13701672948","templateNo":"20171043084643pjv","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|400|200000|手机号被列入和名单|11|


  场景大纲:MDP-305手机号添加到黑名单，<senceType>为OTP，手机号通过渠道商welink发送短信成功
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
      |mdp|/message/sms|{"systemName":"jmeter_welink","mobileNo":"13701672948","templateNo":"20171059140659nht","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|

  场景大纲:MDP-308手机号添加到黑名单，<senceType>为sales/system给其他系统的该手机号通过渠道商welink发送短信成功
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
      |mdp|/message/sms|{"systemName":"jmeter_welink02","mobileNo":"13701672948","templateNo":"20171026110726qof","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_welink02","mobileNo":"13701672948","templateNo":"20171056110656ann","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"System"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|

  场景大纲:MDP-321／MDP-332微网通道被删除且为系统唯一通道，消息类型<senceType>为sales/system通过welink发送短信失败
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
    那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查单接口调用产生的数据库表sms_request_record中列send_status的值为<columnValue1>
    并且检查单接口调用产生的数据库表sms_routing_record中列send_status的值为<columnValue2>
    例子:
      |name |path|param|messageUUID|statusCode|codeValue|messageValue|length|columnValue1|columnValue2|
      |mdp|/message/sms|{"systemName":"jmeter_welink04","mobileNo":"18516552825","templateNo":"20171020175320dui","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_FAILED|
      |mdp|/message/sms|{"systemName":"jmeter_welink04","mobileNo":"18516552825","templateNo":"20171053175253iuj","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"System"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_FAILED|

  场景大纲:MDP-320／MDP-320／MDP-342微网通联渠道被删除但系统有其他可用渠道消息类型<senceType>为sales/system/OTP通过其他渠道商发送短信成功
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
      |mdp|/message/sms|{"systemName":"jmeter_welink03","mobileNo":"18516552825","templateNo":"20171013181013liq","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_welink03","mobileNo":"18516552825","templateNo":"20171048180948xdg","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"System"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|
      |mdp|/message/sms|{"systemName":"jmeter_welink03","mobileNo":"18516552825","templateNo":"20171022180922dcv","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|

  场景大纲:MDP-365系统名称<systemName>为空，接口返回异常
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
    #那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms|{"systemName":"","mobileNo":"18516552825","templateNo":"20171013181013liq","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|400|200000|length must be between 1 and 60|11|

  场景大纲:MDP-364系统名称<systemName>输入61个字符，接口返回异常
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当开始调用单接口并保存返回值messageUUID
 #那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms|{"systemName":"requestIDmorethan60srequestIDmorethan60srequestIDmorethan60s12","mobileNo":"18516552825","templateNo":"20171013181013liq","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|400|200000|length must be between 1 and 60|11|

  场景大纲:MDP-360请求编号<requestID>输入61个字符，接口返回异常
    假如项目<name>做不包含requestID的单一post请求数据准备<path>和<param>
    当执行post请求
 #那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/sms|{"systemName":"jmeter_ems","requestId":"requestIDmorethan60srequestIDmorethan60srequestIDmorethan60s12","mobileNo":"18516552825","templateNo":"20171047085547fqn","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|400|200000|length must be between 1 and 60|

  场景大纲:MDP-359请求编号<requestID>输入60个字符，接口返回正常
    假如项目<name>做不包含requestID的单一post请求数据准备<path>和<param>
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
      |mdp|/message/sms|{"systemName":"jmeter_ems","requestId":"requestIDmorethan60srequestIDmorethan60srequestIDmorethan60s","mobileNo":"18516552825","templateNo":"20171047085547fqn","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|

  场景大纲:MDP-358请求编号<requestID>输入59个字符，接口返回正常
    假如项目<name>做不包含requestID的单一post请求数据准备<path>和<param>
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
      |mdp|/message/sms|{"systemName":"jmeter_ems","requestId":"requestIDmorethan60srequestIDmorethan60srequestIDmorethan60","mobileNo":"18516552825","templateNo":"20171047085547fqn","params":{"testContent":"您好"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"Sales"}|messageUUID|200|000000|成功|11|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|

  场景大纲:MDP-353发送模板<templateNo>为空，接口返回异常
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"18516552825","templateNo":"","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|400|200000|length must be between 1 and 60|11|

  场景大纲:MDP-352发送模板<templateNo>输入61个字符，接口返回异常
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"18516552825","templateNo":"requestIDmorethan60srequestIDmorethan60srequestIDmorethan60s1","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|400|200000|length must be between 1 and 60|11|

  场景大纲:MDP-357手机号<mobileNo>为空，接口返回异常
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"","templateNo":"20171024172024kgy","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|400|200000|手机号码必须为11位数字|11|

  场景大纲:MDP-357手机号<mobileNo>以2开头，接口返回异常
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"28516552825","templateNo":"20171024172024kgy","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|400|200000|手机号码必须为11位数字|11|

  场景大纲:MDP-356手机号<mobileNo>输入12个字符，接口返回异常
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"28516552825","templateNo":"20171024172024kgy","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|400|200000|手机号码必须为11位数字|11|

  场景大纲:MDP-355手机号<mobileNo>输入11个字符，接口返回正常
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
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"18516552825","templateNo":"20171024172024kgy","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|messageUUID|200|000000|成功|11|FORWARD_DIRECTLY|ROUTE_OK|SEND_OK|

  场景大纲:MDP-354手机号<mobileNo>输入10个字符，接口返回异常
    假如项目<name>做包含uuid和time<length>参数的单一post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|length|
      |mdp|/message/sms|{"systemName":"jmeter_ems","mobileNo":"8516552825","templateNo":"20171024172024kgy","params":{"Name":"message-sms","称呼":"单接口"},"sceneType":"发自单条短信接口","retryStratgy":{"isRetry":"true","retryTimes":3,"retryInterval":1},"templateType":"OTP"}|400|200000|手机号码必须为11位数字|11|
