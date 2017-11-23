# language: zh-CN
@all_test @international
功能: 单条OTP国际短信接口/message/int/otp  部门代码：jmeter_ems

  背景:初始化请求参数-jmeter_ems－/message/int/otp
    假如项目mdp做接口/message/int/otp的请求参数初始化
    """
{
	"systemName":"jmeter_ems",
	"requestId":"f3a56704-06b6-4c49-a411-da6622343f78",
	"requestTime":"1509002174322",
	"sceneType":"jmeter_ems国际otp",
	"mobileNo":"98254156",
	"areaCode":"65",
	"templateNo":"tempOTPWithSign",
	"params":{
		"testContent":"10-26_15:16:14星期四-国际otp_jmeter_ems_testOTP【万达】"
	}
}
    """

  场景大纲:MDP-2093 单条OTP-areaCode国家码输入长度为2位，其他参数都正确时，返回状态码为200
    当开始执行post请求然后等待0秒
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应字符类型中code的值为<codeValue>
    并且检查接口响应字符类型中message的值为<messageValue>
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_request_record中列send_status的值为FORWARD_DIRECTLY
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_routing_record中列send_status的值为ROUTE_OK
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_send_record中列send_status的值为SEND_OK
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_request_record中列international的值为1
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_routing_record中列international的值为1
    并且检查本次接口调用产生的记录在数据库表recorddata.sms_send_record中列international的值为1
    @smoke_test
    例子:
      |statusCode|codeValue|messageValue|
      |200|000000|成功|

    #下面注释的是老的写法，最下面使用新的写法替换了，可以明显的看出新写法更简洁明了、更灵活、更容易维护和扩展
#
#  场景大纲: 单条OTP国际短信接口异常发送测试
#    假如用例标题为<caseTitle>-jmeter_ems－/message/int/otp
#    但是增加或修改参数中path为<jsonPath>的参数的值为指定字符串<paramValue>
#    当开始执行post请求然后等待<waitTime>秒
#    那么检查接口返回状态码status是<statusCode>
#    并且检查接口响应字符类型中code的值为<codeValue>
#    并且检查接口响应字符类型中message的值为<messageValue>
#    例子:
#      |jsonPath|paramValue|waitTime|statusCode|codeValue|messageValue|caseTitle|
#      |$.templateNo|20171031085531vun|0|400|200000|此接口只能发送OTP类型短信|MDP-1960,单条OTP-OTP接口，发送通知模板的短信时，发送不成功，返回状态码为400|
#      |$.templateNo|20171047085547fqn|0|400|200000|此接口只能发送OTP类型短信|MDP-1959,单条OTP-OTP接口，发送营销模板的短信时，发送不成功，返回状态码为400|
#      |$.areaCode|00000000086|0|400|200000|区域码必须为数字,最长10位|MDP-1944,单条OTP-areaCode国家码输入长度为11位，其他参数都正确时，返回状态码为400|
#      |$.areaCode|0000000086|0|400|200000|？？|MDP-1943,单条OTP-areaCode国家码输入长度为10位（0000000086），其他参数都正确时，返回状态码为400|
#      |$.areaCode|000000086|0|400|200000|？？|MDP-1942,单条OTP-areaCode国家码输入长度为9位（000000086），其他参数都正确时，返回状态码为400|
##      |$.areaCode|1|0|200|000000|？？|MDP-1941,单条OTP-areaCode国家码输入长度为1位，其他参数都正确时，返回状态码为200|
#      |$.areaCode||0|400|200000|区域码必须为数字,最长10位|MDP-1940,单条OTP-areaCode国家码为空，其他参数都正确时，返回状态码为400|
#      |$.mobileNo|138123456789|0|400|200000|手机号码必须为数字,最长11位|MDP-1939,单条OTP-mobileNo手机号输入长度为12位，其他参数都正确时，返回状态码为400|
#      |$.mobileNo|13812345678|0|200|000000|??|MDP-1938,单条OTP-mobileNo手机号输入长度为11位，其他参数都正确时，返回状态码为200|
#      |$.mobileNo|1381234567|0|200|000000|??|MDP-1937,单条OTP-mobileNo手机号输入长度为10位，其他参数都正确时，返回状态码为200|
#      |$.mobileNo|1|0|200|000000|??|MDP-1936,单条OTP-mobileNo手机号输入长度为1位，其他参数都正确时，返回状态码为200|
#      |$.mobileNo||0|400|200000|手机号码必须为数字,最长11位|MDP-1935,单条OTP-mobileNo手机号码为空，其他参数都正确时，返回状态码为400|
#
#  场景大纲: 单条OTP国际短信接口requestTime长度测试
#    假如用例标题为<caseTitle>-jmeter_ems－/message/int/otp
#    但是增加或修改参数中path为<jsonPath>的参数的值为指定长度<timeLength>的时间戳
#    当开始执行post请求然后等待<waitTime>秒
#    那么检查接口返回状态码status是<statusCode>
#    并且检查接口响应字符类型中code的值为<codeValue>
#    并且检查接口响应字符类型中message的值为<messageValue>
#    例子:
#      |jsonPath|timeLength|waitTime|statusCode|codeValue|messageValue|caseTitle|
#      |$.requestTime|14|0|400|200000|时间格式应为10或13位整数|MDP-1957,单条OTP-requestTime请求时间长度为14位，其他参数都正确时，返回状态码为400|
##      |$.requestTime|13|0|200|000000|成功|MDP-1956,单条OTP-requestTime请求时间长度为13位，其他参数都正确时，返回状态码为200，且返回参数正确|
##      |$.requestTime|12|0|200|000000|成功|MDP-1955,单条OTP-requestTime请求时间长度为12位，其他参数都正确时，返回状态码为200，且返回参数正确|
##      |$.requestTime|11|0|200|000000|成功|MDP-1954,单条OTP-requestTime请求时间长度为11位，其他参数都正确时，返回状态码为200，且返回参数正确|
##      |$.requestTime|10|0|200|000000|成功|MDP-1953,单条OTP-requestTime请求时间长度为10位，其他参数都正确时，返回状态码为200，且返回参数正确|
#      |$.requestTime|9|0|400|200000|时间格式应为10或13位整数|MDP-1952,单条OTP-requestTime请求时间长度为9位，其他参数都正确时，返回状态码为400|
#      |$.requestTime|0|0|400|200000|时间格式应为10或13位整数|MDP-1951,单条OTP-requestTime请求时间为空，其他参数都正确时，返回状态码为400|
#
#
#  场景大纲: 单条OTP国际短信接口字符串类型的参数长度测试
#    假如用例标题为<caseTitle>-jmeter_ems－/message/int/otp
#    但是增加或修改参数中path为<jsonPath>的参数的值为指定长度<paramLength>的随机字符串
#    当开始执行post请求然后等待<waitTime>秒
#    那么检查接口返回状态码status是<statusCode>
#    并且检查接口响应字符类型中code的值为<codeValue>
#    并且检查接口响应字符类型中message的值为<messageValue>
#    例子:
#      |jsonPath|paramLength|waitTime|statusCode|codeValue|messageValue|caseTitle|
#      |$.templateNo|61|0|400|200000|length must be between 1 and 60|MDP-1948,单条OTP-templateNo发送模板长度为61，其他参数都正确时，返回状态码为400|
#      |$.templateNo|0|0|400|200000|length must be between 1 and 60|MDP-1945,单条OTP-templateNo发送模板为空，其他参数都正确时，返回状态码为400|
#      |$.areaCode|11|0|400|200000|区域码必须为数字,最长10位|MDP-1944,单条OTP-areaCode国家码输入长度为11位，其他参数都正确时，返回状态码为400|
#      |$.areaCode|1|0|400|200000|区域码必须为数字,最长10位|MDP-1941,单条OTP-areaCode国家码输入长度为1位，其他参数都正确时，返回状态码为200|
#      |$.sceneType|31|0|400|200000|sceneType最长30位|MDP-1934,单条OTP-senceType长度为31，其他参数都正确时，返回状态码为400|
##      |$.sceneType|30|0|200|000000|区域码必须为数字,最长10位|MDP-1933,单条OTP-senceType长度为30，其他参数都正确时，返回状态码为200，且返回参数正确|
##      |$.sceneType|29|0|200|000000|区域码必须为数字,最长10位|MDP-1932,单条OTP-senceType长度为29，其他参数都正确时，返回状态码为200，且返回参数正确|
##      |$.sceneType|0|0|200|000000|区域码必须为数字,最长10位|MDP-1931,单条OTP-senceType为空，其他参数都正确时，返回状态码为200，且返回参数正确|
#      |$.requestId|61|0|400|200000|length must be between 1 and 60|MDP-1930,单条OTP-requestId长度为61，其他参数正确时，返回状态码为400|
##      |$.requestId|60|0|200|000000|区域码必须为数字,最长10位|MDP-1929,单条OTP-requestId长度为60，其他参数正确时，返回状态码为200，且返回参数正确|
##      |$.requestId|59|0|200|000000|区域码必须为数字,最长10位|MDP-1928,单条OTP-requestId长度为59，其他参数正确时，返回状态码为200，且返回参数正确|
#      |$.requestId|0|0|400|200000|length must be between 1 and 60|MDP-1927,单条OTP-requestId为空，其他参数正确时，返回状态码为400|
#      |$.systemName|61|0|400|200000|length must be between 1 and 60|MDP-1926,单条OTP-systemName系统名称长度为61，其他参数正确时，返回状态码为400|
#      |$.systemName|60|0|400|200000|模板[20171016085516rgg]不存在或状态不可用|MDP-1925,单条OTP-systemName系统名称长度为60，其他参数正确时，返回状态码为200，且返回参数正确|
#      |$.systemName|59|0|400|200000|模板[20171016085516rgg]不存在或状态不可用|MDP-1924,单条OTP-systemName系统名称长度为59，其他参数正确时，返回状态码为200，且返回参数正确|
#      |$.systemName|0|0|400|200000|length must be between 1 and 60|MDP-1923,单条OTP-systemName系统名称为空，其他参数正确时，返回状态码为400|
#      |$.systemName|1|0|400|200000|模板[20171016085516rgg]不存在或状态不可用|MDP-1922,单条OTP-systemName系统名称与模板编号不一致时，返回状态码为400|
#
#
#  场景大纲: 单条OTP国际短信接口字符串类型的参数长度测试
#    假如用例标题为<caseTitle>-jmeter_ems－/message/int/otp
#    但是增加或修改参数中path为<jsonPath>的参数的值为指定长度<paramLength>的随机字符串
#    当开始执行post请求然后等待<waitTime>秒
#    那么检查接口返回状态码status是<statusCode>
#    并且检查接口响应字符类型中code的值为<codeValue>
#    并且检查接口响应是否包含<messageValue>
#    并且检查接口响应是否包含<messageValue1>
#    例子:
#      |jsonPath|paramLength|waitTime|statusCode|codeValue|messageValue|messageValue1|caseTitle|
#      |$.params|3|0|400|200000|Could not read document|deserialize from String value|MDP-1950,单条OTP-params参数输入非object数据类型，其他参数都正确时，返回状态码为400|
#      |$.params|0|0|400|200000|Could not read document|deserialize from String value|MDP-1949,单条OTP-params参数为空，其他参数都正确时，返回状态码为400|
#      |$.templateNo|60|0|400|200000|模板|不存在或状态不可用|MDP-1947,单条OTP-templateNo发送模板长度为60，其他参数都正确时，返回状态码为200|
#      |$.templateNo|59|0|400|200000|模板|不存在或状态不可用|MDP-1946,单条OTP-templateNo发送模板长度为59，其他参数都正确时，返回状态码为200|


  场景大纲: 单条OTP国际短信接口测试
    假如用例标题为<caseTitle>-jmeter_ems－/message/int/otp
    但是修改参数——修改类型为<alterType>参数path为<jsonPath>值为<paramValue>
    当开始执行post请求然后等待0秒
    那么检查接口返回状态码status是<statusCode>
    并且检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    并且检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    并且检查接口响应——检查类型为<checkType3>节点path为<jsonPath3>预期结果为<expectValue3>
    @smoke_test
    例子:JIRA上面的case
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |指定字符串|$.templateNo|tempSystemWithSign|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|此接口只能发送OTP类型短信|节点值是否等于|$.suceeded|FALSE|MDP-1960,单条OTP-OTP接口，发送通知模板的短信时，发送不成功，返回状态码为400|
      |指定字符串|$.templateNo|tempSalesWithSign|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|此接口只能发送OTP类型短信|节点值是否等于|$.suceeded|FALSE|MDP-1959,单条OTP-OTP接口，发送营销模板的短信时，发送不成功，返回状态码为400|
      |指定字符串|$.areaCode|12345678901|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|区域码必须为数字,最长10位|节点值是否等于|$.suceeded|FALSE|MDP-1944,单条OTP-areaCode国家码输入长度为11位，其他参数都正确时，返回状态码为400|
      |指定字符串|$.areaCode||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|区域码必须为数字,最长10位|节点值是否等于|$.suceeded|FALSE|MDP-1940,单条OTP-areaCode国家码为空，其他参数都正确时，返回状态码为400|
      |指定字符串|$.mobileNo|138123456789|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|手机号码必须为数字,最长11位|节点值是否等于|$.suceeded|FALSE|MDP-1939,单条OTP-mobileNo手机号输入长度为12位，其他参数都正确时，返回状态码为400|
      |指定字符串|$.mobileNo||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|手机号码必须为数字,最长11位|节点值是否等于|$.suceeded|FALSE|MDP-1935,单条OTP-mobileNo手机号码为空，其他参数都正确时，返回状态码为400|
      |指定长度随机字符串|$.templateNo|61|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1948,单条OTP-templateNo发送模板长度为61，其他参数都正确时，返回状态码为400|
      |指定长度随机字符串|$.templateNo|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1945,单条OTP-templateNo发送模板为空，其他参数都正确时，返回状态码为400|
      |指定长度随机字符串|$.areaCode|11|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|区域码必须为数字,最长10位|节点值是否等于|$.suceeded|FALSE|MDP-1944,单条OTP-areaCode国家码输入长度为11位，其他参数都正确时，返回状态码为400|
      |指定长度随机字符串|$.areaCode|1|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|区域码必须为数字,最长10位|节点值是否等于|$.suceeded|FALSE|MDP-1941,单条OTP-areaCode国家码输入长度为1位，其他参数都正确时，返回状态码为200|
      |指定长度随机字符串|$.sceneType|31|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|sceneType最长30位|节点值是否等于|$.suceeded|FALSE|MDP-1934,单条OTP-senceType长度为31，其他参数都正确时，返回状态码为400|
      |指定长度随机字符串|$.requestId|61|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1930,单条OTP-requestId长度为61，其他参数正确时，返回状态码为400|
      |指定长度随机字符串|$.requestId|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1927,单条OTP-requestId为空，其他参数正确时，返回状态码为400|
      |指定长度随机字符串|$.systemName|61|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1926,单条OTP-systemName系统名称长度为61，其他参数正确时，返回状态码为400|
      |指定长度随机字符串|$.systemName|60|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|模板[tempOTPWithSign]不存在或状态不可用|节点值是否等于|$.suceeded|FALSE|MDP-1925,单条OTP-systemName系统名称长度为60，其他参数正确时，返回状态码为200，且返回参数正确|
      |指定长度随机字符串|$.systemName|59|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|模板[tempOTPWithSign]不存在或状态不可用|节点值是否等于|$.suceeded|FALSE|MDP-1924,单条OTP-systemName系统名称长度为59，其他参数正确时，返回状态码为200，且返回参数正确|
      |指定长度随机字符串|$.systemName|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|FALSE|MDP-1923,单条OTP-systemName系统名称为空，其他参数正确时，返回状态码为400|
      |指定长度随机字符串|$.systemName|1|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|模板[tempOTPWithSign]不存在或状态不可用|节点值是否等于|$.suceeded|FALSE|MDP-1922,单条OTP-systemName系统名称与模板编号不一致时，返回状态码为400|
      |指定长度随机字符串|$.params|3|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|Could not read document|节点值是否等于|$.suceeded|FALSE|MDP-1950,单条OTP-params参数输入非object数据类型，其他参数都正确时，返回状态码为400|
      |指定长度随机字符串|$.params|0|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|Could not read document|节点值是否等于|$.suceeded|FALSE|MDP-1949,单条OTP-params参数为空，其他参数都正确时，返回状态码为400|
      |指定长度随机字符串|$.templateNo|60|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|不存在或状态不可用|节点值是否等于|$.suceeded|FALSE|MDP-1947,单条OTP-templateNo发送模板长度为60，其他参数都正确时，返回状态码为200|
      |指定长度随机字符串|$.templateNo|59|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|不存在或状态不可用|节点值是否等于|$.suceeded|FALSE|MDP-1946,单条OTP-templateNo发送模板长度为59，其他参数都正确时，返回状态码为200|
      |指定长度时间戳|$.requestTime|14|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|时间格式应为10或13位整数|节点值是否等于|$.suceeded|FALSE|MDP-1957,单条OTP-requestTime请求时间长度为14位，其他参数都正确时，返回状态码为400|
      |指定长度时间戳|$.requestTime|9|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|时间格式应为10或13位整数|节点值是否等于|$.suceeded|FALSE|MDP-1952,单条OTP-requestTime请求时间长度为9位，其他参数都正确时，返回状态码为400|
      |指定长度时间戳|$.requestTime|0|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|时间格式应为10或13位整数|节点值是否等于|$.suceeded|FALSE|MDP-1951,单条OTP-requestTime请求时间为空，其他参数都正确时，返回状态码为400|
    @cost_money
    例子:JIRA上面会产生国际短信费用的case
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |指定字符串|$.areaCode|1234567890|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1943,单条OTP-areaCode国家码输入长度为10位（0000000086），其他参数都正确时，返回状态码为400|
      |指定字符串|$.areaCode|123456789|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1942,单条OTP-areaCode国家码输入长度为9位（000000086），其他参数都正确时，返回状态码为400|
      |指定字符串|$.mobileNo|13812345678|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1938,单条OTP-mobileNo手机号输入长度为11位，其他参数都正确时，返回状态码为200|
      |指定字符串|$.mobileNo|1381234567|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1937,单条OTP-mobileNo手机号输入长度为10位，其他参数都正确时，返回状态码为200|
      |指定字符串|$.mobileNo|1|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1936,单条OTP-mobileNo手机号输入长度为1位，其他参数都正确时，返回状态码为200|
      |指定字符串|$.areaCode|1|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1941,单条OTP-areaCode国家码输入长度为1位，其他参数都正确时，返回状态码为200|
      |指定长度随机字符串|$.sceneType|30|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1933,单条OTP-senceType长度为30，其他参数都正确时，返回状态码为200，且返回参数正确|
      |指定长度随机字符串|$.sceneType|29|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1932,单条OTP-senceType长度为29，其他参数都正确时，返回状态码为200，且返回参数正确|
      |指定长度随机字符串|$.sceneType|0|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1931,单条OTP-senceType为空，其他参数都正确时，返回状态码为200，且返回参数正确|
      |指定长度随机字符串|$.requestId|60|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1929,单条OTP-requestId长度为60，其他参数正确时，返回状态码为200，且返回参数正确|
      |指定长度随机字符串|$.requestId|59|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1928,单条OTP-requestId长度为59，其他参数正确时，返回状态码为200，且返回参数正确|
      |指定长度时间戳|$.requestTime|13|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1956,单条OTP-requestTime请求时间长度为13位，其他参数都正确时，返回状态码为200，且返回参数正确|
      |指定长度时间戳|$.requestTime|12|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1955,单条OTP-requestTime请求时间长度为12位，其他参数都正确时，返回状态码为200，且返回参数正确|
      |指定长度时间戳|$.requestTime|11|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1954,单条OTP-requestTime请求时间长度为11位，其他参数都正确时，返回状态码为200，且返回参数正确|
      |指定长度时间戳|$.requestTime|10|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-1953,单条OTP-requestTime请求时间长度为10位，其他参数都正确时，返回状态码为200，且返回参数正确|
    @smoke_test
    例子:参数缺失的case
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |删除|$.systemName||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be null|节点值是否等于|$.suceeded|FALSE|systemName不传|
      |删除|$.requestId||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be null|节点值是否等于|$.suceeded|FALSE|requestId不传|
      |删除|$.areaCode||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be null|节点值是否等于|$.suceeded|FALSE|areaCode不传|
      |删除|$.mobileNo||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be null|节点值是否等于|$.suceeded|FALSE|mobileNo不传|
      |删除|$.templateNo||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be null|节点值是否等于|$.suceeded|FALSE|templateCode不传|
      |删除|$.requestTime||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|请求时间不能为空|节点值是否等于|$.suceeded|FALSE|requestTime不传|
      |删除|$.params||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be null|节点值是否等于|$.suceeded|FALSE|params不传|
    @cost_money
    例子:参数缺失会产生国际短信费用的case
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |删除|$.sceneType||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|scenceType不传|



  场景大纲: MDP-1958单条OTP-输入正确的请求参数，但请求URL错误，返回状态码为404
    *    项目mdp做接口/message/int/otp_error_url的请求参数初始化
    """
{
	"systemName":"jmeter_ems",
	"requestId":"f3a56704-06b6-4c49-a411-da6622343f78",
	"requestTime":"1509002174322",
	"sceneType":"jmeter_ems国际otp",
	"mobileNo":"98254156",
	"areaCode":"65",
	"templateNo":"20171016085516rgg",
	"params":{
		"testContent":"10-26_15:16:14星期四-国际otp_jmeter_ems_testOTP【万达】"
	}
}
    """
    * 开始执行post请求然后等待0秒
    * 检查接口返回状态码status是<statusCode>
    * 检查接口响应——检查类型为响应正文是否包含节点path为null预期结果为Not Found
    @smoke_test
    例子:
    |statusCode|
    |        404|













