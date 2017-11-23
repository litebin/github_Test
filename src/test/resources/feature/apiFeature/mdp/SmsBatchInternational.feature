# language: zh-CN
@all_test @international
功能: 批量非OTP国际短信接口/message/batch/int  部门代码：jmeter_ems

  背景:批量非OTP国际短信接口初始化请求参数-jmeter_ems－/message/batch/int
    假如项目mdp做接口/message/batch/int的请求参数初始化
    """
{
	"systemName":"jmeter_ems",
	"requestTime":"1509002174598",
	"sceneType":"jmeter_ems批量",
	"templateNo":"tempSalesWithSign",
	"clientBatchId":"16228bd1-7479-46e5-a6fb-0cff434ea213",
	"targetList":[
		{
			"areaCode":"65",
			"mobileNo":"98254157",
			"requestId":"c20f23c1-6508-4a71-a7cd-2d64a9ad2965",
			"params":{
				"testContent":"10-26_15:16:14星期四-国际批量2个_jmeter_ems_testOTP【万达】"
			}
		},
		{
			"areaCode":"65",
			"mobileNo":"98254156",
			"requestId":"aa7ef12c-40e2-4614-8d3f-8024bd50cb47",
			"params":{
				"testContent":"10-26_15:16:14星期四-国际批量2个_jmeter_ems_testOTP【万达】"
			}
		}
	]
}
    """

  @smoke_test
  场景大纲:批量非OTP国际短信接口/message/batch/int指定参数为指定值的场景-jmeter_ems－/message/batch/int
    假如用例标题为<caseTitle>-jmeter_ems－/message/batch/int
    但是修改参数——修改类型为<alterType>参数path为<jsonPath>值为<paramValue>
    当开始执行post请求然后等待0秒
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    并且检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    并且检查接口响应——检查类型为<checkType3>节点path为<jsonPath3>预期结果为<expectValue3>
    例子:JIRA上的case
      |alterType|jsonPath|paramValue|waitTime|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |指定字符串|$.templateNo|tempOTPWithSign|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|此接口只能发送非OTP类型短信|节点值是否等于|$.suceeded|FALSE|MDP-1921批量非OTP-非OTP接口，发送OTP的短信时，发送不成功，返回状态码为400|
      |指定字符串|$.targetList[0].params|aaa|0|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|Could not read|节点值是否等于|$.suceeded|FALSE|MDP-1919批量非OTP-params参数输入非object数据类型，其他参数都正确时，返回状态码为400|
      |指定字符串|$.targetList[0].params||0|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|Could not read|节点值是否等于|$.suceeded|FALSE|MDP-1918批量非OTP-params参数为空，其他参数都正确时，返回状态码为400|
      |指定字符串|$.targetList[0].areaCode|12345678901|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|区域码必须为数字,最长10位|节点值是否等于|$.suceeded|FALSE|MDP-1917批量非OTP-areaCode国家码输入长度为11位，其他参数都正确时，返回状态码为400|
      |指定字符串|$.targetList[0].areaCode||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|区域码必须为数字,最长10位|节点值是否等于|$.suceeded|FALSE|MDP-1913批量非OTP-areaCode国家码为空，其他参数都正确时，返回状态码为400|
      |指定字符串|$.targetList[0].mobileNo|110123456789|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|手机号码必须为数字,最长11位|节点值是否等于|$.suceeded|FALSE|MDP-1912批量非OTP-mobileNo手机号输入长度为12位，其他参数都正确时，返回状态码为400|
      |指定字符串|$.targetList[0].mobileNo|110123456789|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|手机号码必须为数字,最长11位|节点值是否等于|$.suceeded|FALSE|MDP-1910批量非OTP-mobileNo手机号输入长度为10位，其他参数都正确时，返回状态码为200|
      |指定字符串|$.targetList[0].mobileNo|1|0|200|节点值是否等于|$.1.code|000000|节点值是否等于|$.1.message|成功|节点值是否匹配|$.1.messageUUID|^\\w{32}$|MDP-1909批量非OTP-mobileNo手机号输入长度为1位，其他参数都正确时，返回状态码为200|
      |指定字符串|$.targetList[0].mobileNo||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|手机号码必须为数字,最长11位|节点值是否等于|$.suceeded|FALSE|MDP-1908批量非OTP-mobileNo手机号码为空，其他参数都正确时，返回状态码为400|
      |指定长度随机字符串|$.targetList[0].requestId|61|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1907批量非OTP-requestId长度为61位，其他参数都正确，返回状态码为400|
      |指定长度随机字符串|$.targetList[0].requestId|0|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1904批量非OTP-requestId为空，其他参数都正确，返回状态码为400|
      |指定字符串|$.targetList|targeList|0|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|Could not read|节点值是否等于|$.suceeded|FALSE|MDP-1898批量非OTP-targetList为非数组型，其他参数都正确时，返回状态码为400|
      |指定字符串|$.targetList||0|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|Could not read|节点值是否等于|$.suceeded|FALSE|MDP-1897批量非OTP-targetList为空，其他参数都正确时，返回状态码为400|
      |指定长度随机字符串|$.clientBatchId|61|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|clientBatchId最长60位|节点值是否等于|$.suceeded|FALSE|MDP-1896批量非OTP-clientBatchId长度为61位，其他参数都正确时，返回状态码为400|
      |指定字符串|$.templateNo||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1891批量非OTP-templateNo发送模板为空，其他参数都正确时，返回状态码为400                                      |
      |指定长度随机字符串|$.sceneType|31|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|sceneType最长30位|节点值是否等于|$.suceeded|FALSE|MDP-1890批量非OTP-senceType长度为31，其他参数都正确时，返回状态码为400                                                |
      |指定长度随机字符串|$.sceneType|30|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1889批量非OTP-senceType长度为30，其他参数都正确时，返回状态码为200，且返回参数正确                                              |
      |指定长度随机字符串|$.sceneType|29|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1888批量非OTP-senceType长度为29，其他参数都正确时，返回状态码为200，且返回参数正确                                              |
      |指定字符串|$.sceneType||0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1887批量非OTP-senceType为空，其他参数都正确时，返回状态码为200，且返回参数正确                                                            |
      |指定长度时间戳|$.requestTime|14|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|时间格式应为10或13位整数|节点值是否等于|$.suceeded|FALSE|MDP-1886批量非OTP-requestTime请求时间长度为14位，其他参数都正确时，返回状态码为400                               |
      |指定长度时间戳|$.requestTime|9|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|时间格式应为10或13位整数|节点值是否等于|$.suceeded|FALSE|MDP-1881批量非OTP-requestTime请求时间长度为9位，其他参数都正确时，返回状态码为400                                 |
      |指定字符串|$.requestTime||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|时间格式应为10或13位整数|节点值是否等于|$.suceeded|FALSE|MDP-1880批量非OTP-requestTime请求时间为空时，其他参数都正确，返回状态码为400                                           |
      |指定长度随机字符串|$.systemName|61|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1879批量非OTP-systemName系统名称长度为61，其他参数正确时，返回状态码为400                          |
      |指定长度随机字符串|$.systemName|60|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|模板[tempSalesWithSign]不存在或状态不可用|节点值是否等于|$.suceeded|FALSE|MDP-1878批量非OTP-systemName系统名称长度为60，其他参数正确时，返回状态码为200，且返回参数正确                                   |
      |指定长度随机字符串|$.systemName|59|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|模板[tempSalesWithSign]不存在或状态不可用|节点值是否等于|$.suceeded|FALSE|MDP-1877批量非OTP-systemName系统名称长度为59，其他参数正确时，返回状态码为200，且返回参数正确                                   |
      |指定字符串|$.systemName||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1876批量非OTP-systemName系统名称为空，其他参数正确时，返回状态码为400                                        |
      |指定长度随机字符串|$.systemName|33|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|模板[tempSalesWithSign]不存在或状态不可用|节点值是否等于|$.suceeded|FALSE|MDP-1875批量非OTP-systemName系统名称与模板编号不一致时，返回状态码为400|
    @cost_money
    例子:源自jira的cse（会产生国际短信费用的部分，每个case会发送2条国际短信，每条国际短信费用￥0.8）
      |alterType|jsonPath|paramValue|waitTime|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |指定字符串|$.targetList[0].areaCode|1234567890|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1916批量非OTP-areaCode国家码输入长度为10位（0000000086），其他参数都正确时，返回状态码为400|
      |指定字符串|$.targetList[0].areaCode|123456789|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1915批量非OTP-areaCode国家码输入长度为9位（000000086），其他参数都正确时，返回状态码为400|
      |指定字符串|$.targetList[0].areaCode|65|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-2092批量非OTP-areaCode国家码输入长度为2位，其他参数都正确时，返回状态码为200|
      |指定字符串|$.targetList[0].areaCode|1|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1914批量非OTP-areaCode国家码输入长度为1位，其他参数都正确时，返回状态码为200|
      |指定字符串|$.targetList[0].mobileNo|11012345678|0|200|节点值是否等于|$.11012345678.code|000000|节点值是否等于|$.11012345678.message|成功|节点值是否匹配|$.11012345678.messageUUID|^\\w{32}$|MDP-1911批量非OTP-mobileNo手机号输入长度为11位，其他参数都正确时，返回状态码为200|
      |指定长度随机字符串|$.targetList[0].requestId|60|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1906批量非OTP-requestId长度为60位，其他参数都正确，返回状态码为200|
      |指定长度随机字符串|$.targetList[0].requestId|59|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1905批量非OTP-requestId长度为59位，其他参数都正确，返回状态码为200|
      |指定长度随机字符串|$.clientBatchId|60|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1895批量非OTP-clientBatchId长度为60位，其他参数都正确时，返回状态码为200且返回参数正确|
      |指定长度随机字符串|$.clientBatchId|59|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1894批量非OTP-clientBatchId长度为59位，其他参数都正确时，返回状态码为200且返回参数正确|
      |指定字符串|$.clientBatchId||0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1892批量非OTP-clientBatchId为空，其他参数都正确时，返回状态码为200且返回参数正确                                                        |
      |指定长度时间戳|$.requestTime|13|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1885批量非OTP-requestTime请求时间长度为13位，其他参数都正确时，返回状态码为200，且返回参数正确                                    |
      |指定长度时间戳|$.requestTime|12|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1884批量非OTP-requestTime请求时间长度为12位，其他参数都正确时，返回状态码为200，且返回参数正确                                    |
      |指定长度时间戳|$.requestTime|11|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1883批量非OTP-requestTime请求时间长度为11位，其他参数都正确时，返回状态码为200，且返回参数正确                                    |
      |指定长度时间戳|$.requestTime|10|0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|MDP-1882批量非OTP-requestTime请求时间长度为10位，其他参数都正确时，返回状态码为200，且返回参数正确                                    |
    例子:异常场景——参数缺失
      |alterType|jsonPath|paramValue|waitTime|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |删除|$.systemName||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be null|节点值是否等于|$.suceeded|FALSE|systemName不传|
      |删除|$.requestTime||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|请求时间不能为空|节点值是否等于|$.suceeded|FALSE|requestTime不传|
      |删除|$.templateNo||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be null|节点值是否等于|$.suceeded|FALSE|templateNo不传|
      |删除|$.targetList||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|N/A 待定|节点值是否等于|$.suceeded|FALSE|targetList不传|
      |删除|$.targetList[0].requestId||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|requestId不能为空|节点值是否等于|$.suceeded|FALSE|requestId不传|
      |删除|$.targetList[0].mobileNo||0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be null|节点值是否等于|$.suceeded|FALSE|mobileNo不传|
    例子:异常场景——参数缺失（会产生国际短信费用）
      |alterType|jsonPath|paramValue|waitTime|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |删除|$.sceneType||0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|sceneType不传|
      |删除|$.clientBatchId||0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|clientBatchId不传|
      |删除|$.targetList[0].areaCode||0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|areaCode不传|
      |删除|$.targetList[0].params||0|200|节点值是否等于|$.98254157.code|000000|节点值是否等于|$.98254157.message|成功|节点值是否匹配|$.98254157.messageUUID|^\\w{32}$|params不传|

  @smoke_test
  场景大纲:批量非OTP国际短信接口/message/batch/int正常发送短信的场景（MDP-2092批量非OTP-areaCode国家码输入长度为2位，其他参数都正确时，返回状态码为200）-jmeter_ems－/message/batch/int
    假如用例标题为<caseTitle>-jmeter_ems－/message/batch/int
    但是修改参数——修改类型为指定字符串参数path为$.templateNo值为<paramValue>
    当开始执行post请求然后等待0秒
    那么检查接口返回状态码status是200
    并且检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    并且检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    并且检查接口响应——检查类型为<checkType3>节点path为<jsonPath3>预期结果为<expectValue3>
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_request_record中列send_status的值为FORWARD_IN_QUEUE,FORWARD_IN_QUEUE
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_routing_record中列send_status的值为ROUTE_OK,ROUTE_OK
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_send_record中列send_status的值为SEND_OK,SEND_OK
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_request_record中列international的值为1,1
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_routing_record中列international的值为1,1
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_send_record中列international的值为1,1
    例子:国际批量接口正常发送场景
      |paramValue|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |tempSalesWithSign|节点值是否等于|$..code|000000|节点值是否等于|$..message|成功|节点值是否匹配|$..messageUUID|^\\w{32}$|国际批量接口通过ems发送营销短信，并检查数据库|
      |tempSystemWithSign|节点值是否等于|$..code|000000|节点值是否等于|$..message|成功|节点值是否匹配|$..messageUUID|^\\w{32}$|国际批量接口通过ems发送通知短信，并检查数据库|

  @smoke_test
  场景大纲: MDP-1920 批量非OTP-输入正确的请求参数，但请求URL错误，返回状态码为404
    * 项目mdp做接口/message/batch/int_error_url的请求参数初始化
    """
{
	"systemName":"jmeter_ems",
	"requestTime":"1509002174598",
	"sceneType":"jmeter_ems批量",
	"templateNo":"tempSalesWithSign",
	"clientBatchId":"16228bd1-7479-46e5-a6fb-0cff434ea213",
	"targetList":[
		{
			"areaCode":"65",
			"mobileNo":"98254157",
			"requestId":"c20f23c1-6508-4a71-a7cd-2d64a9ad2965",
			"params":{
				"testContent":"10-26_15:16:14星期四-国际批量2个_jmeter_ems_testOTP【万达】"
			}
		},
		{
			"areaCode":"65",
			"mobileNo":"98254156",
			"requestId":"aa7ef12c-40e2-4614-8d3f-8024bd50cb47",
			"params":{
				"testContent":"10-26_15:16:14星期四-国际批量2个_jmeter_ems_testOTP【万达】"
			}
		}
	]
}
    """
    * 开始执行post请求然后等待0秒
    * 检查接口返回状态码status是<statusCode>
    * 检查接口响应——检查类型为响应正文是否包含节点path为null预期结果为Not Found
    例子:
      |statusCode|
      |        404|

  @cost_money
  场景大纲:批量非OTP国际短信接口/message/batch/int一次发送多个手机号码
    * 用例标题为<caseTitle>
    * 批量短信接口包含<mobileNoCount>个手机号码的请求报文准备
    * 开始执行post请求然后等待0秒
    * 检查接口返回状态码status是<statusCode>
    * 检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    * 检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    * 检查本次接口调用产生的记录在数据库表recorddata.sms_request_record中列send_status的值为FORWARD_IN_QUEUE×<mobileNoCount>
    * 检查本次接口调用产生的记录在数据库表recorddata.sms_request_record中列international的值为1×<mobileNoCount>
    例子:
    |mobileNoCount|waitTime|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|caseTitle|
    |1|5|200|节点值是否等于|$.*.code|000000|节点值是否匹配|$.*.messageUUID|^\\w{32}$|MDP-1899	批量非OTP-targetList数组为1个，其他参数都正确时，返回状态码为200|
    |5|10|200|节点值是否等于|$.*.code|000000|节点值是否匹配|$.*.messageUUID|^\\w{32}$|MDP-1900	批量非OTP-targetList数组为5个，其他参数都正确时，返回状态码为200|
    |99|20|200|节点值是否等于|$.*.code|000000|节点值是否匹配|$.*.messageUUID|^\\w{32}$|MDP-1901	 批量非OTP-targetList数组为99个，其他参数都正确时，返回状态码为200|
    |100|20|200|节点值是否等于|$.*.code|000000|节点值是否匹配|$.*.messageUUID|^\\w{32}$|MDP-1902	批量非OTP-targetList数组为100个，其他参数都正确时，返回状态码为200|

  @smoke_test
  场景大纲:MDP-1903	批量非OTP-targetList数组为101个，其他参数都正确时，返回状态码为400
    * 批量短信接口包含101个手机号码的请求报文准备
    * 开始执行post请求然后等待0秒
    * 检查接口返回状态码status是400
    * 检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    * 检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    例子:
    |checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|
    |节点值是否等于|$.*.code|200000|节点值是否等于|$.message|通道报错: 号码超过最大限制数|