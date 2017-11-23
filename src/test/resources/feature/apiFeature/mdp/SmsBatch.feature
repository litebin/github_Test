# language: zh-CN
@all_test
功能: 批量短信接口/message/batch/sms 部门代码：jmeter_ems

#  场景大纲:发送批量消息成功/message/batch/sms
#    假如项目<name>做包含uuid和time<length>参数的批量post请求数据准备<path>和<param>
#    当执行post请求
#    那么检查接口是否返回正确<messageUUID>
#    那么检查接口是否返回正确<code>
#    那么检查接口是否返回正确<message>
#    例子:
#      |name |path|param|messageUUID|code|message|length|
#      |mdp|/message/batch/sms|{"systemName":"XD","sceneType":"sales","templateNo":"20170243194243yzy","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","params":{"name":"肖德兵","productName":"Wanda Product","amount":"10000"}},{"mobileNo":"15026465806","params":{ "name":"李中将","productName":"Wanda Product","amount":"10000"}}]}|messageUUID|000000|成功|11|

  #批量接口通过ems发送system短信成功
#  场景大纲:发送批量消息成功/message/batch/sms
#    假如项目<name>做包含uuid和time<length>参数的批量post请求数据准备<path>和<param>
#    当执行post请求
#    那么检查接口是否返回正确<messageUUID>
#    那么检查接口是否返回正确<code>
#    那么检查接口是否返回正确<message>
#    例子:
#      |name |path|param|messageUUID|code|message|length|
#      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"20170739171639ptr","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSystem【万达】"}},{"mobileNo":"13818597865","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSystem【万达】"}}]}|messageUUID|000000|成功|11|
#
#  #批量接口通过ems发送sales短信成功
#  场景大纲:发送批量消息成功/message/batch/sms
#    假如项目<name>做包含uuid和time<length>参数的批量post请求数据准备<path>和<param>
#    当执行post请求
#    那么检查接口是否返回正确<messageUUID>
#    那么检查接口是否返回正确<code>
#    那么检查接口是否返回正确<message>
#    例子:
#      |name |path|param|messageUUID|code|message|length|
#      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"13818597865","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|messageUUID|000000|成功|11|

  场景大纲:MDP-963验证systemName为空字符串，批量接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"13818597865","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|length must be between 1 and 60|

  场景大纲:MDP-963验证systemName不传，批量接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"13818597865","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|may not be null|

  场景大纲:MDP-964验证requestTime为空，批量接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口时间长度为<timeLength>测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |timeLength|path|param|statusCode|codeValue|messageValue|
      |mdp|0           |/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"13818597865","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|时间格式应为10或13位整数|

  场景大纲:MDP-964验证requestTime不传，批量接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"13818597865","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|请求时间不能为空|

  场景大纲:MDP-965验证templateNo为空，批量接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"13818597865","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|length must be between 1 and 60|

  场景大纲:MDP-965验证templateNo不传，批量接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"13818597865","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|may not be null|

  场景大纲:MDP-966验证targetList为空，批量接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[]}|400|200000|通道报错: 号码为空|

  场景大纲:MDP-966验证targetList不传，批量接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717"}|400|200000|通道报错: 号码为空|

  场景大纲:MDP-968验证templateNo与systemName不匹配，接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"20170727172327zi","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"13818597865","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|模板[20170727172327zi]不存在或状态不可用|

  场景大纲:MDP-969验证发送到非手机号格式的号码，如以非1开头的，接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"27717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"23818597865","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|提交的手机号码中包含非法的手机号码,提交的手机号码中包含非法的手机号码|

  场景大纲:MDP-970验证发送到不正确手机号格式的号码，如非11位数字的，接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"@Value(.*?)","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|提交的手机号码中包含非法的手机号码|

  场景大纲:MDP-970验证发送到不正确手机号格式的号码，如非11位数字的，接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"177175617450","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|提交的手机号码中包含非法的手机号码|

  场景大纲:MDP-971验证发送到空号或无效号码，接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查正常批量接口响应中code的值<codeValue>
    并且检查正常批量接口响应中message的值<messageValue>
    并且检查接口响应字段中是否包含<key3>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|key3|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"13000000000","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|200|000000|成功|messageUUID|

  场景大纲:MDP-972验证发送到空号或无效号码和合法手机号，接口的返回-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"@Value(.*?)","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|提交的手机号码中包含非法的手机号码|

  场景大纲:MDP-973验证批量发送接口的发送上限为100，超过100接口返回报错-jmeter_ems－/message/batch/sms
    假如项目<name>做包含<num>个手机号码的批量短信接口调用数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |num|path|param|statusCode|codeValue|messageValue|
      |mdp|101  |/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}},{"mobileNo":"@Value(.*?)","requestId":"444ca79c-56a3-4f4b-a50b-8c16f4fdc8ad", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|通道报错: 号码超过最大限制数|

  场景大纲:MDP-974验证批量发送接口的发送给1个手机号，接口返回-jmeter_ems－/message/batch/sms
    假如项目<name>做包含<num>个手机号码的批量短信接口调用数据准备<path>和<param>
    当开始执行post请求然后等待0秒
    那么检查接口返回状态码status是<statusCode>
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_request_record中列send_status的值为<status1>
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_routing_record中列send_status的值为<status2>
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_send_record中列send_status的值为<status3>
    例子:
      |name |num|path|param|statusCode|status1|status2|status3|
      |mdp  |1  |/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|200|FORWARD_IN_QUEUE|ROUTE_OK|SEND_OK|

  场景大纲:MDP-975验证批量发送接口的发送给5个手机号，接口返回-jmeter_ems－/message/batch/sms
    假如项目<name>做包含<num>个手机号码的批量短信接口调用数据准备<path>和<param>
    当开始执行post请求然后等待0秒
    那么检查接口返回状态码status是<statusCode>
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_request_record中列send_status的值为<status1>
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_routing_record中列send_status的值为<status2>
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_send_record中列send_status的值为<status3>
    例子:
      |name |num|path|param|statusCode|status1|status2|status3|
      |mdp  |5|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempSalesWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|200|FORWARD_IN_QUEUE,FORWARD_IN_QUEUE,FORWARD_IN_QUEUE,FORWARD_IN_QUEUE,FORWARD_IN_QUEUE|ROUTE_OK,ROUTE_OK,ROUTE_OK,ROUTE_OK,ROUTE_OK|SEND_OK,SEND_OK,SEND_OK,SEND_OK,SEND_OK|

  场景大纲:MDP-976验证批量发送接口不能发送OTP消息-jmeter_ems－/message/batch/sms
    假如项目<name>做批量短信接口测试数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    例子:
      |name |path|param|statusCode|codeValue|messageValue|
      |mdp|/message/batch/sms|{"systemName":"jmeter_ems","requestTime":"1508397563810","sceneType":"jmeter_ems批量","templateNo":"tempOTPWithSign","clientBatchId":"e2e3127c-256b-4cd5-ad61-e9c5c6ad1717","targetList":[{"mobileNo":"17717561745","requestId":"aee58f9b-394e-458a-94f0-450c0c1fb7ca", "params":{"testContent":"cucumber_jmeter_ems_testSales【万达】"}}]}|400|200000|此接口只能发送非OTP类型短信|


  场景大纲:验证各通道、各接口、各类型的短信可以成功发送
    * 项目<name>做通过通道<channelName>接口地址<path>发送类型为<smsType>的短信数据准备
    * 开始执行post请求然后等待0秒
    * 检查接口返回状态码status是<statusCode>
    * 检查短信接口响应中code的值<codeValue>
    * 检查短信接口响应中message的值<messageValue>
    * 检查本次接口调用产生的记录在数据库表recorddata.sms_request_record中列send_status的值为<columnValue1>
    * 检查本次接口调用产生的记录在数据库表recorddata.sms_routing_record中列send_status的值为ROUTE_OK
    * 检查本次接口调用产生的记录在数据库表recorddata.sms_send_record中列send_status的值为SEND_OK
    例子:chuanglan
      |name |channelName|path|smsType|statusCode|codeValue|messageValue|columnValue1|
      |mdp| chuanglan|/message/sms/otp|otp|200|000000|成功|FORWARD_DIRECTLY|
      |mdp| chuanglan|/message/sms|otp|200|000000|成功|FORWARD_DIRECTLY |
      |mdp| chuanglan|/message/sms|system|200|000000|成功|FORWARD_IN_QUEUE|
      |mdp| chuanglan|/message/sms|sales|200|000000|成功|FORWARD_IN_QUEUE|
      |mdp| chuanglan|/message/batch/sms|system|200|000000|成功|FORWARD_IN_QUEUE|
      |mdp| chuanglan|/message/batch/sms|sales|200|000000|成功|FORWARD_IN_QUEUE|
    例子:honglian95
      |name |channelName|path|smsType|statusCode|codeValue|messageValue|columnValue1|
      |mdp| honglian95|/message/sms/otp|otp|200|000000|成功|             FORWARD_DIRECTLY             |
      |mdp| honglian95|/message/sms|otp|200|000000|成功|                 FORWARD_DIRECTLY             |
      |mdp| honglian95|/message/sms|system|200|000000|成功|     FORWARD_IN_QUEUE                      |
      |mdp| honglian95|/message/sms|sales|200|000000|成功|     FORWARD_IN_QUEUE                       |
      |mdp| honglian95|/message/batch/sms|system|200|000000|成功|     FORWARD_IN_QUEUE                |
      |mdp| honglian95|/message/batch/sms|sales|200|000000|成功|      FORWARD_IN_QUEUE                |
    例子:welink
      |name |channelName|path|smsType|statusCode|codeValue|messageValue|columnValue1|
      |mdp| welink|/message/sms/otp|otp|200|000000|成功|          FORWARD_DIRECTLY                    |
      |mdp| welink|/message/sms|otp|200|000000|成功|            FORWARD_DIRECTLY                      |
      |mdp| welink|/message/sms|system|200|000000|成功|     FORWARD_IN_QUEUE                          |
      |mdp| welink|/message/sms|sales|200|000000|成功|            FORWARD_IN_QUEUE                    |
      |mdp| welink|/message/batch/sms|system|200|000000|成功|FORWARD_IN_QUEUE|
      |mdp| welink|/message/batch/sms|sales|200|000000|成功|FORWARD_IN_QUEUE|
    例子:mengwang
      |name |channelName|path|smsType|statusCode|codeValue|messageValue|columnValue1|
      |mdp| mengwang|/message/sms/otp|otp|200|000000|成功|FORWARD_DIRECTLY|
      |mdp| mengwang|/message/sms|otp|200|000000|成功|FORWARD_DIRECTLY|
      |mdp| mengwang|/message/sms|system|200|000000|成功|FORWARD_IN_QUEUE|
      |mdp| mengwang|/message/sms|sales|200|000000|成功|FORWARD_IN_QUEUE|
      |mdp| mengwang|/message/batch/sms|system|200|000000|成功|FORWARD_IN_QUEUE|
      |mdp| mengwang|/message/batch/sms|sales|200|000000|成功|FORWARD_IN_QUEUE|
    例子:EMS
      |name |channelName|path|smsType|statusCode|codeValue|messageValue|columnValue1|
      |mdp| EMS|/message/sms/otp|otp|200|000000|成功|FORWARD_DIRECTLY|
      |mdp| EMS|/message/sms|otp|200|000000|成功|FORWARD_DIRECTLY|
      |mdp| EMS|/message/sms|system|200|000000|成功|FORWARD_IN_QUEUE|
      |mdp| EMS|/message/sms|sales|200|000000|成功|FORWARD_IN_QUEUE|
      |mdp| EMS|/message/batch/sms|system|200|000000|成功|FORWARD_IN_QUEUE|
      |mdp| EMS|/message/batch/sms|sales|200|000000|成功|FORWARD_IN_QUEUE|


  场景大纲:MDP-1106	验证短信批量发送接口发送短信后，数据库中的请求记录表、发送记录表和发送详情表的send_status的字段的值统一-jmeter_ems－/message/batch/sms
    * 项目mdp做接口/message/batch/sms的请求参数初始化
    """
{
	"systemName":"jmeter_ems",
	"requestTime":"1509002174598",
	"sceneType":"jmeter_ems批量",
	"templateNo":"tempSalesWithSign",
	"clientBatchId":"16228bd1-7479-46e5-a6fb-0cff434ea213",
	"targetList":[
		{
			"mobileNo":"17717561745",
			"requestId":"c20f23c1-6508-4a71-a7cd-2d64a9ad2965",
			"params":{
				"testContent":"10-26_15:16:14星期四-批量2个_jmeter_ems_test"
			}
		},
		{
			"mobileNo":"13818597865",
			"requestId":"aa7ef12c-40e2-4614-8d3f-8024bd50cb47",
			"params":{
				"testContent":"10-26_15:16:14星期四-国际2个_jmeter_ems_test"
			}
		}
	]
}
    """
    * 开始执行post请求然后等待0秒
    * 检查接口返回状态码status是200
    * 检查接口响应——检查类型为节点值是否等于节点path为$.17717561745.code预期结果为000000
    * 检查接口响应——检查类型为节点值是否等于节点path为$.17717561745.message预期结果为成功
    * 检查接口响应——检查类型为节点值是否等于节点path为$.17717561745.mobileNo预期结果为17717561745
    * 检查接口响应——检查类型为节点值是否等于节点path为$.17717561745.immediately预期结果为false
    * 检查接口响应——检查类型为节点值是否等于节点path为$.17717561745.suceeded预期结果为true
    * 检查接口响应——检查类型为节点值是否匹配节点path为$.17717561745.messageUUID预期结果为<reg1>
    * 检查接口响应——检查类型为节点值是否等于节点path为$.13818597865.code预期结果为000000
    * 检查接口响应——检查类型为节点值是否等于节点path为$.13818597865.message预期结果为成功
    * 检查接口响应——检查类型为节点值是否等于节点path为$.13818597865.mobileNo预期结果为13818597865
    * 检查接口响应——检查类型为节点值是否等于节点path为$.13818597865.immediately预期结果为false
    * 检查接口响应——检查类型为节点值是否等于节点path为$.13818597865.suceeded预期结果为true
    * 检查接口响应——检查类型为节点值是否匹配节点path为$.13818597865.messageUUID预期结果为<reg2>
    * 检查本次接口调用产生的记录在数据库表recorddata.sms_request_record中列send_status的值为FORWARD_IN_QUEUE,FORWARD_IN_QUEUE
    * 检查本次接口调用产生的记录在数据库表recorddata.sms_routing_record中列send_status的值为ROUTE_OK,ROUTE_OK
    * 检查本次接口调用产生的记录在数据库表recorddata.sms_send_record中列send_status的值为SEND_OK,SEND_OK
    例子:
      | reg1|reg2|
      | ^\\w{32}$|^\\w{32}$|

