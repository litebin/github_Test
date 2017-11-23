# language: zh-CN
@all_test
功能: 单一推送接口/push/singlePush  部门代码：wealthapp

  背景:批量非OTP国际短信接口初始化请求参数-wealthapp－/push/singlePush
    * 项目mdp做接口/push/singlePush的请求参数初始化
    """
{
  "systemName":"wealthapp",
  "requestId":"aa9d2821-c26f-4043-95b2-3004529ae9da",
  "requestTime":"1508993243206",
  "audience":{
    "userNo":"ALL"
  },
  "templateNo":"testPush3",
  "templateVariables":{
	"testContent":"singlePush"
  },
  "params":{
  	"badge":"+1",
  	"sound":"default",
    "subtitle":"Wanda Product",
    "extras":{
      "url":"wdwt://web?url=%24%7BimgUrl%7D",
      "thumbnailUrl":"http://10.214.168.53/small/small5.png",
      "type": "",
      "attachment-image": "http://10.214.168.53/big/big5.png"
    },
    "mutable-content": 1
  }
}
    """

  场景大纲:单一推送接口-wealthapp－/push/singlePush-All
    * 用例标题为<caseTitle>-wealthapp－/push/singlePush-All
    * 修改参数——修改类型为<alterType>参数path为<jsonPath>值为<paramValue>
    * 开始执行post请求然后等待60秒
    * 检查接口返回状态码status是<statusCode>
    * 检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    * 检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    * 检查接口响应——检查类型为<checkType3>节点path为<jsonPath3>预期结果为<expectValue3>
    * 检查本次接口调用产生的记录在数据库表mdpdata.push_record中列status的值为SUCCESS
    * 检查本次接口调用产生的记录在数据库表pushdata.push_record中列status的值为1
    例子:广播
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |指定字符串|$.templateNo|testPush3|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-432  平台公告和活动精选批量请求接口1|
      |指定字符串|$.templateNo|testPush2|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-432  平台公告和活动精选批量请求接口2|
      |指定字符串|$.templateNo|testPush1|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-429  我的消息-单一推送请求1|


  场景大纲:单一推送接口-wealthapp－/push/singlePush-IOS
    * 用例标题为<caseTitle>-wealthapp－/push/singlePush
    * 修改参数——修改类型为<alterType>参数path为<jsonPath>值为<paramValue>
    * 修改参数——修改类型为指定字符串参数path为$.audience.userNo值为15026465806
    * 开始执行post请求然后等待60秒
    * 检查接口返回状态码status是<statusCode>
    * 检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    * 检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    * 检查接口响应——检查类型为<checkType3>节点path为<jsonPath3>预期结果为<expectValue3>
    * 检查本次接口调用产生的记录在数据库表mdpdata.push_record中列status的值为SUCCESS
    * 检查本次接口调用产生的记录在数据库表pushdata.push_record中列status的值为1
    例子:IOS
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |指定字符串|$.templateNo|testPush3|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-432  平台公告和活动精选批量请求接口1|
      |指定字符串|$.templateNo|testPush2|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-432  平台公告和活动精选批量请求接口2|
      |指定字符串|$.templateNo|testPush1|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-429  我的消息-单一推送请求1|


  场景大纲:单一推送接口-wealthapp－/push/singlePush-ANDROID
    * 用例标题为<caseTitle>-wealthapp－/push/singlePush
    * 修改参数——修改类型为<alterType>参数path为<jsonPath>值为<paramValue>
    * 修改参数——修改类型为指定字符串参数path为$.audience.userNo值为17717561745
    * 开始执行post请求然后等待60秒
    * 检查接口返回状态码status是<statusCode>
    * 检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    * 检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    * 检查接口响应——检查类型为<checkType3>节点path为<jsonPath3>预期结果为<expectValue3>
    * 检查本次接口调用产生的记录在数据库表mdpdata.push_record中列status的值为SUCCESS
    * 检查本次接口调用产生的记录在数据库表pushdata.push_record中列status的值为1
    例子:ANDROID
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |指定字符串|$.templateNo|testPush3|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-432  平台公告和活动精选批量请求接口1|
      |指定字符串|$.templateNo|testPush2|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-432  平台公告和活动精选批量请求接口2|
      |指定字符串|$.templateNo|testPush1|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|MDP-429  我的消息-单一推送请求1|


  场景大纲:单一推送接口-wealthapp－/push/singlePush-参数异常场景
    * 用例标题为<jsonPath>
    * 修改参数——修改类型为指定字符串参数path为$.audience.userNo值为17717561745
    * 修改参数——修改类型为<alterType>参数path为<jsonPath>值为<paramValue>
    * 开始执行post请求然后等待60秒
    * 检查接口返回状态码status是<statusCode>
    * 检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    * 检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    * 检查接口响应——检查类型为<checkType3>节点path为<jsonPath3>预期结果为<expectValue3>
    * 检查本次接口调用产生的记录在数据库表mdpdata.push_record中列status的值为<dbValue1>
    * 检查本次接口调用产生的记录在数据库表pushdata.push_record中列status的值为<dbValue2>
    例子:参数值为空
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|dbValue1|dbValue2|
      |指定字符串|$.systemName||400|节点值是否等于|$.code|200000|节点值是否包含|$.message|may not be empty|节点值是否等于|$.suceeded|false|||
      |指定字符串|$.requestId||400|节点值是否等于|$.code|200000|节点值是否包含|$.message|may not be empty|节点值是否等于|$.suceeded|false|||
      |指定字符串|$.requestTime||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|时间格式应为10到13位整数|节点值是否等于|$.suceeded|false|||
      |指定字符串|$.audience||400|节点值是否等于|$.code|200000|节点值是否包含|$.message|Could not read document|节点值是否等于|$.suceeded|false|||
      |指定字符串|$.audience.userNo||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|参数校验失败|节点值是否等于|$.suceeded|false|||
      |指定字符串|$.templateNo||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be empty|节点值是否等于|$.suceeded|false|||
      |指定字符串|$.templateVariables||400|节点值是否等于|$.code|200000|节点值是否包含|$.message|Could not read document|节点值是否等于|$.suceeded|false|||
      |指定字符串|$.templateVariables.testContent||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|SUCCESS|1|
      |指定字符串|$.params||400|节点值是否等于|$.code|200000|节点值是否包含|$.message|Could not read document|节点值是否等于|$.suceeded|false|||
      |指定字符串|$.params.badge||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|SUCCESS|1|
      |指定字符串|$.params.sound||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|SUCCESS|1|
      |指定字符串|$.params.extras||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|FAILED|2|
    例子:参数值未传
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|dbValue1|dbValue2|
      |删除|$.systemName||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be empty|节点值是否等于|$.suceeded|false|||
      |删除|$.requestId||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be empty|节点值是否等于|$.suceeded|false|||
      |删除|$.requestTime||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|SUCCESS|1|
      |删除|$.audience||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be null|节点值是否等于|$.suceeded|false|||
      |删除|$.audience.userNo||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|参数校验失败|节点值是否等于|$.suceeded|false|||
      |删除|$.templateNo||400|节点值是否等于|$.code|200000|节点值是否等于|$.message|may not be empty|节点值是否等于|$.suceeded|false|||
      |删除|$.templateVariables||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|SUCCESS|1|
      |删除|$.templateVariables.testContent||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|SUCCESS|1|
      |删除|$.params||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|SUCCESS|1|
      |删除|$.params.badge||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|SUCCESS|1|
      |删除|$.params.sound||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|SUCCESS|1|
      |删除|$.params.extras||200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.messageUUID|^\\w{32}$|SUCCESS|1|
    例子:参数值长度不对
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|dbValue1|dbValue2|
      |指定长度随机字符串|$.systemName|61|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|false|||
      |指定长度随机字符串|$.requestId|61|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|length must be between 1 and 60|节点值是否等于|$.suceeded|false|||
      |指定长度时间戳|$.requestTime|14|400|节点值是否等于|$.code|200000|节点值是否等于|$.message|时间格式应为10到13位整数|节点值是否等于|$.suceeded|false|||
      |指定长度随机字符串|$.audience.userNo|1000|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|could not execute statement|节点值是否等于|$.suceeded|false|||
      |指定长度随机字符串|$.templateNo|256|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|不存在或状态不可用|节点值是否等于|$.suceeded|false|||
      |指定长度随机字符串|$.templateVariables.testContent|2001|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|could not execute statement|节点值是否等于|$.suceeded|false|||
      |指定长度随机字符串|$.params.badge|2001|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|could not execute statement|节点值是否等于|$.suceeded|false|||
      |指定长度随机字符串|$.params.sound|2001|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|could not execute statement|节点值是否等于|$.suceeded|false|||
      |指定长度随机字符串|$.params.extras.url|2001|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|could not execute statement|节点值是否等于|$.suceeded|false|||
      |指定长度随机字符串|$.params.extras.thumbnailUrl|2001|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|could not execute statement|节点值是否等于|$.suceeded|false|||
      |指定长度随机字符串|$.params.extras.attachment\-image|2001|400|节点值是否等于|$.code|200000|节点值是否包含|$.message|could not execute statement|节点值是否等于|$.suceeded|false|||


#
#  场景大纲:MDP-432  平台公告和活动精选批量请求接口1-wealthapp－/push/singlePush
#    假如项目<name>做单一推送接口调用请求数据准备<path>和
#    """
#  {
#    "systemName":"wealthapp",
#    "requestId":"aa9d2821-c26f-4043-95b2-3004529ae9da",
#    "requestTime":"1508993243206",
#    "audience":{
#      "userNo":"ALL"
#    },
#    "templateNo":"20170829162429egvwe",
#    "templateVariables":{
#      "testContent":"singlePush"
#    },
#    "params":{
#      "badge":"+1",
#      "sound":"default",
#      "subtitle":"Wanda Product",
#      "extras":{
#        "url":"wdwt://web?url=%24%7BimgUrl%7D",
#        "thumbnailUrl":"http://10.214.168.53/small/small5.png",
#        "type": "",
#        "attachment-image": "http://10.214.168.53/big/big5.png"
#      },
#      "mutable-content": 1
#    }
#  }
#    """
#    当执行post请求
#    那么检查接口返回状态码status是<statusCode>
#    并且检查接口响应字符类型中code的值为<codeValue>
#    并且检查接口响应字符类型中message的值为<messageValue>
#    并且检查本次推送产生的记录在数据库表mdpdata.push_record中列status的值为<columnValue1>
#    例子:
#      |name |path|statusCode|codeValue|messageValue|columnValue1|
#      |mdp|/push/singlePush|200|000000|成功|SUCCESS|
#
#
#  场景大纲:MDP-429  我的消息-单一推送请求-wealthapp－/push/singlePush
#    假如项目<name>做单一推送接口调用请求数据准备<path>和
#    """
#  {
#    "systemName":"wealthapp",
#    "requestId":"aa9d2821-c26f-4043-95b2-3004529ae9da",
#    "requestTime":"1508993243206",
#    "audience":{
#      "userNo":"ALL"
#    },
#    "templateNo":"20170842161642ganrz",
#    "templateVariables":{
#      "testContent":"singlePush"
#    },
#    "params":{
#      "badge":"+1",
#      "sound":"default",
#      "subtitle":"Wanda Product",
#      "extras":{
#        "url":"wdwt://web?url=%24%7BimgUrl%7D",
#        "thumbnailUrl":"http://10.214.168.53/small/small5.png",
#        "type": "",
#        "attachment-image": "http://10.214.168.53/big/big5.png"
#      },
#      "mutable-content": 1
#    }
#  }
#    """
#    当执行post请求
#    那么检查接口返回状态码status是<statusCode>
#    并且检查接口响应字符类型中code的值为<codeValue>
#    并且检查接口响应字符类型中message的值为<messageValue>
#    并且检查本次推送产生的记录在数据库表mdpdata.push_record中列status的值为<columnValue1>
#    例子:
#      |name |path|statusCode|codeValue|messageValue|columnValue1|
#      |mdp|/push/singlePush|200|000000|成功|SUCCESS|

