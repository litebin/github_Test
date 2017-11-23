# language: zh-CN
@all_test
功能: 模版非用户组类型邮件发送接口/mail/template/address/send

  背景:模版非用户组类型邮件发送接口初始化请求参数
  假如项目mdp_mail做接口/mail/template/address/send的请求参数初始化
    """
{
  "systemCode": "XD",
  "requestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2966",
  "requestTime": "1509002174598",
  "emailType": "trigger",
  "domainName": "wanda-mail.liyanjie.top",
  "from": "suntoe20171103",
  "fromName": "suntoe20171103",
  "templateCode": "NewWeixinQr",
  "targetList": [
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2967",
      "toAddress": "xiaomeizhao021@163.com",
      "params": {
        "name": "liyj",
        "city": "上海",
        "url": "http://www.baidu.com"
      }
    },
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2968",
      "toAddress": "zhaoshuying1@wanda.cn",
      "params": {
        "name": "nnnn",
        "city": "北京",
        "url": "http://www.sina.cn"
      }
    }
  ]
}
    """

   场景大纲:MDP-2766／MDP-2772-请求参数全部配置正确，点击发送，发送成功，状态返回码为200
    当开始执行post请求然后等待5秒
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中message的值为<messageValue>
    那么检查接口响应字符类型中code的值为<codeValue>
    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |statusCode|codeValue|messageValue|columnValue|
      |200|000000|成功|发送成功|

  场景大纲:MDP-2788-请求节点params不传，其他参数正确，点击发送，发送成功，状态返回码为200
    当修改参数——修改类型为删除参数path为$.targetList[0].params值为35
    当修改参数——修改类型为删除参数path为$.targetList[1].params值为35
    当开始执行post请求然后等待10秒
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中message的值为<messageValue>
    那么检查接口响应字符类型中code的值为<codeValue>
    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |statusCode|codeValue|messageValue|columnValue|
      |200|000000|成功|发送成功|

    #requestID不传
  场景大纲:MDP-2778-请求参数requestId节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.requestId值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|requestId不能为空|

    #requestTime不传
  场景大纲:MDP-2779请求参数requestTime节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.requestTime值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|请求时间不能为空|

   # requestTime长度14位
  场景大纲:MDP-2791－请求参数requestTime大于13位，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定长度时间戳参数path为$.requestTime值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |14|400|200000|requestTime只能为13位数字|

    # requestTime长度12位
  场景大纲:MDP-2791请求参数requestTime小于13位，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定长度时间戳参数path为$.requestTime值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |12|400|200000|requestTime只能为13位数字|

    #不传systemCode
  场景大纲:MDP-2780请求参数systemCode节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.systemCode值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|systemCode不能为空|

    #不传templateCode
  场景大纲:MDP-2781请求参数templateCode节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.templateCode值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|templateCode不能为空|

    #不传domainName
  场景大纲:MDP-2782请求参数domainName节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.domainName值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|domainName不能为空|

    #不传emailType
  场景大纲:MDP-2783请求参数emailType节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.emailType值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|emailType不能为空|

    #emailType为else
  场景大纲:MDP-2863请求参数emailType只能为trigger或batch，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.emailType值为else
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|emailType只能为trigger或batch|

    #from不传
  场景大纲:MDP-2784请求参数from节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.from值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|from不能为空|

  场景大纲:MDP-2864－请求参数clientRequestId其中一个节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.targetList[0].clientRequestId值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|clientRequestId不能为空|

    #2个clientRequestId都不传
  场景大纲:MDP-2865请求参数clientRequestId两个节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.targetList[0].clientRequestId值为<paramValue>
    当修改参数——修改类型为删除参数path为$.targetList[1].clientRequestId值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|clientRequestId不能为空,clientRequestId不能为空|

    #一个toAddress不传
  场景大纲:MDP-2786请求参数toAddress其中一个节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.targetList[0].toAddress值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|toAddress不能为空|

    #2个toAddress都不传
  场景大纲:MDP-2786请求参数toAddress两个节点不传，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为删除参数path为$.targetList[0].toAddress值为<paramValue>
    当修改参数——修改类型为删除参数path为$.targetList[1].toAddress值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |35|400|200000|toAddress不能为空,toAddress不能为空|

#requestId为“”
  场景大纲:MDP-2767-请求参数requestId节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.requestId值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:
      |paramValue|statusCode|codeValue|messageValue|
      ||400|200000|requestId必须为1-60位|

    #requestTime为“”
  场景大纲:MDP-2768请求参数requestTime节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.requestTime值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:
      |paramValue|statusCode|codeValue|messageValue|
      ||400|200000|requestTime只能为13位数字|

    #systemCode为“”
  场景大纲:MDP-2769请求参数systemCode节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.systemCode值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:
      |paramValue|statusCode|codeValue|messageValue|
      ||400|200000|systemCode必须为1-255位|

    #templateCode值为“”
  场景大纲:MDP-2770请求参数templateCode节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.templateCode值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      ||400|200000|templateCode必须为1-60位|

    #domainName值为“”
  场景大纲:MDP-2771请求参数domainName节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.domainName值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      ||400|200000|domainName必须为1-255位|

    #emailType值为“”
  场景大纲:MDP-2772请求参数emailType节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.emailType值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      ||400|200000|emailType只能为trigger或batch|

    #from值为“”
  场景大纲:MDP-2773请求参数from节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.from值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    #那么检查接口响应字符类型中message的值为<messageValue>
    那么检查接口响应——检查类型为响应正文是否包含节点path为$.mesasge预期结果为<messageValue1>
    那么检查接口响应——检查类型为响应正文是否包含节点path为$.mesasge预期结果为<messageValue2>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue1|messageValue2|
      ||400|200000|from格式不正确(必须为邮件格式或者名称, 比如support@wanda.cn 或 support)|from必须为1-128位|

    #一个clientRequestId值为“”
  场景大纲:MDP-2774请求参数clientRequestId其中一个节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.targetList[0].clientRequestId值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      ||400|200000|clientRequestId必须为1-60位|

    #2个clientRequestId值为“”
  场景大纲:MDP-2774请求参数clientRequestId两个节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.targetList[0].clientRequestId值为<paramValue>
    当修改参数——修改类型为指定字符串参数path为$.targetList[1].clientRequestId值为<paramValue1>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|paramValue1|statusCode|codeValue|messageValue|
      |||400|200000|clientRequestId必须为1-60位,clientRequestId必须为1-60位|

    #toAddress值为“”
  场景大纲:MDP-2775请求参数toAddress其中一个节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.targetList[0].toAddress值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      ||400|200000|toAddress必须为4-254位,toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn)|

    #2个toAddress值为“”
  场景大纲:请MDP-2775求参数toAddress两个节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.targetList[0].toAddress值为<paramValue>
    当修改参数——修改类型为指定字符串参数path为$.targetList[1].toAddress值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      ||400|200000|toAddress必须为4-254位,toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn),toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn),toAddress必须为4-254位|

    #其中一个toAddress格式不正确
  场景大纲:MDP-2792请求参数toAddress其中一个节点邮件格式不正确，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.targetList[0].toAddress值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |xiaomeizhao|400|200000|toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn)|
      |xiaomeizhao@|400|200000|toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn)|
      |xiaomeizhao@163|400|200000|toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn)|

    #2个toAddress格式不正确
  场景大纲:MDP-2792请求参数toAddress两个节点邮件格式不正确，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.targetList[0].toAddress值为<paramValue>
    当修改参数——修改类型为指定字符串参数path为$.targetList[1].toAddress值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|messageValue|
      |xiaomeizhao|400|200000|toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn),toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn)|
      |xiaomeizhao@|400|200000|toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn),toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn)|
      |xiaomeizhao@163|400|200000|toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn),toAddress格式不正确(必须为email格式，比如zhangsan@wanda.cn)|



  场景大纲:MDP-2789请求参数params其中一个节点值为空，其他参数正确，点击发送，发送成功，状态返回码为200
    假如项目mdp_mail做接口/mail/template/address/send的请求参数初始化
    """
{
  "systemCode": "XD",
  "requestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2966",
  "requestTime": "1509002174598",
  "emailType": "trigger",
  "domainName": "wanda-mail.liyanjie.top",
  "from": "suntoe20171103",
  "fromName": "suntoe20171103",
  "templateCode": "NewWeixinQr",
  "targetList": [
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2967",
      "toAddress": "xiaomeizhao021@163.com",
      "params": {}
    },
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2968",
      "toAddress": "zhaoshuying1@wanda.cn",
      "params": {
        "name": "nnnn",
        "city": "北京",
        "url": "http://www.sina.cn"
      }
    }
  ]
}
    """
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |statusCode|codeValue|messageValue|columnValue|
      |200|000000|成功|发送成功|


  场景大纲:MDP-2790请求参数params两个节点值为空，其他参数正确，点击发送，发送成功，状态返回码为200
    假如项目mdp_mail做接口/mail/template/address/send的请求参数初始化
    """
{
  "systemCode": "XD",
  "requestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2966",
  "requestTime": "1509002174598",
  "emailType": "trigger",
  "domainName": "wanda-mail.liyanjie.top",
  "from": "suntoe20171103",
  "fromName": "suntoe20171103",
  "templateCode": "NewWeixinQr",
  "targetList": [
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2967",
      "toAddress": "xiaomeizhao021@163.com",
      "params": {}
    },
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2968",
      "toAddress": "zhaoshuying1@wanda.cn",
      "params": {}
    }
  ]
}
    """
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |statusCode|codeValue|messageValue|columnValue|
      |200|000000|成功|发送成功|


  场景大纲:MDP-2796-请求参数requestId为61位时，其他参数正确，点击发送，发送失败，状态返回码为400，提示requestId必须为1-60位
    当修改参数——修改类型为指定长度随机字符串参数path为$.requestId值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
  #并且检查单接口调用产生的数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:
      |paramValue|statusCode|codeValue|messageValue|
      |61|400|200000|requestId必须为1-60位|

  场景大纲:MDP-2795-请求参数requestId为60位时，其他参数正确，点击发送，发送成功，状态返回码为200
    当修改参数——修改类型为指定长度随机字符串参数path为$.requestId值为<paramValue>
    当开始执行post请求然后等待5秒
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:
      |paramValue|statusCode|codeValue|messageValue|columnValue|
      |60|200|000000|成功|发送成功|

  场景大纲:MDP-2794-请求参数requestId为59位时，其他参数正确，点击发送，发送成功，状态返回码为200
    当修改参数——修改类型为指定长度随机字符串参数path为$.requestId值为<paramValue>
    当执行post请求
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:
      |paramValue|statusCode|codeValue|messageValue|columnValue|
      |59|200|000000|成功|发送成功|

  场景大纲:MDP-2793-请求参数requestId为2位时，其他参数正确，点击发送，发送成功，状态返回码为200
    当修改参数——修改类型为指定长度随机字符串参数path为$.requestId值为<paramValue>
    当开始执行post请求然后等待10秒
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:
      |paramValue|statusCode|codeValue|messageValue|columnValue|
      |2|200|000000|成功|发送成功|

    #1个clientRequestId值为60位
  场景大纲:MDP-2866请求参数clientRequestId其中一个节点值60位，其他参数正确，点击发送，发送成功，状态返回码为200
    假如项目mdp_mail做接口/mail/template/address/send的请求参数初始化
    """
{
  "systemCode": "XD",
  "requestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2966",
  "requestTime": "1509002174598",
  "emailType": "trigger",
  "domainName": "wanda-mail.liyanjie.top",
  "from": "suntoe20171103",
  "fromName": "suntoe20171103",
  "templateCode": "NewWeixinQr",
  "targetList": [
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2967c20f23c1-6508-4a71-a7c60",
      "toAddress": "xiaomeizhao021@163.com",
      "params": {
        "name": "liyj",
        "city": "上海",
        "url": "http://www.baidu.com"
      }
    },
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2968",
      "toAddress": "zhaoshuying1@wanda.cn",
      "params": {
        "name": "nnnn",
        "city": "北京",
        "url": "http://www.sina.cn"
      }
    }
  ]
}
    """
    当开始执行post请求然后等待10秒
  #那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |statusCode|codeValue|messageValue|columnValue|
      |200|000000|成功|发送成功|

    #2个clientRequestId值为60位校验数据库记录
  场景大纲:MDP-2867请求参数clientRequestId两个节点值60位，其他参数正确，点击发送，发送成功，状态返回码为200
    假如项目mdp_mail做接口/mail/template/address/send的请求参数初始化
    """
{
  "systemCode": "XD",
  "requestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2966",
  "requestTime": "1509002174598",
  "emailType": "trigger",
  "domainName": "wanda-mail.liyanjie.top",
  "from": "suntoe20171103",
  "fromName": "suntoe20171103",
  "templateCode": "NewWeixinQr",
  "targetList": [
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2967c20f23c1-6508-4a71-a7c60",
      "toAddress": "xiaomeizhao021@163.com",
      "params": {
        "name": "liyj",
        "city": "上海",
        "url": "http://www.baidu.com"
      }
    },
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2967c20f23c1-6508-4a71-a7d60",
      "toAddress": "liyj144@126.com",
      "params": {
        "name": "nnnn",
        "city": "北京",
        "url": "http://www.sina.cn"
      }
    }
  ]
}
    """
    当开始执行post请求然后等待10秒
  #那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:第一部分
      |statusCode|codeValue|messageValue|columnValue|
      |200|000000|成功|发送成功|

#  此类一个失败另一个成功的场景暂时没有处理
#  场景大纲:请求参数clientRequestId其中一个节点值61位，其他参数正确，点击发送，发送失败，状态返回码为400
#    当修改参数——修改类型为指定长度随机字符串参数path为$.targetList[0].clientRequestId值为<paramValue>
#    当修改参数——修改类型为指定长度随机字符串参数path为$.targetList[1].clientRequestId值为<paramValue>
#    当开始调用批量接口并保存返回值messageUUID
#  #那么检查接口响应字段中是否包含<messageUUID>
#    那么检查接口返回状态码status是<statusCode>
#    那么检查接口响应字符类型中code的值为<codeValue>
#    例子:
#      |paramValue|statusCode|codeValue|columnValue|
#      ||400|200000|clientRequestId长度不能超过60位|
#      |35|200|000000|send_ok|

  #2个clientRequestId值为61位
  场景大纲:MDP-2868请求参数clientRequestId两个节点值61位，其他参数正确，点击发送，发送失败，状态返回码为400
    假如项目mdp_mail做接口/mail/template/address/send的请求参数初始化
    """
{
  "systemCode": "XD",
  "requestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2966",
  "requestTime": "1509002174598",
  "emailType": "trigger",
  "domainName": "wanda-mail.liyanjie.top",
  "from": "suntoe20171103",
  "fromName": "suntoe20171103",
  "templateCode": "NewWeixinQr",
  "targetList": [
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2967c20f23c1-6508-4a71-a7c661",
      "toAddress": "xiaomeizhao021@163.com",
      "params": {
        "name": "liyj",
        "city": "上海",
        "url": "http://www.baidu.com"
      }
    },
    {
      "clientRequestId": "c20f23c1-6508-4a71-a7cd-2d64a9ad2967c20f23c1-6508-4a71-a7d661",
      "toAddress": "zhaoshuying1@wanda.cn",
      "params": {
        "name": "nnnn",
        "city": "北京",
        "url": "http://www.sina.cn"
      }
    }
  ]
}
    """
    当开始执行post请求然后等待10秒
  #那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    例子:第一部分
      |statusCode|codeValue|messageValue|
      |400|200000|clientRequestId必须为1-60位,clientRequestId必须为1-60位|

    #templateCode超过255位
  场景大纲:MDP-2800请求参数templateCode超过255位，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定长度随机字符串参数path为$.templateCode值为<paramValue>
    当执行post请求
  #那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|columnValue|
      |256|400|200000|templateCode必须为1-255位|

#  场景大纲:MDP-2799-请求参数templateCode为255位时，其他参数正确，点击发送，发送成功，状态返回码为200
#    当修改参数——修改类型为指定长度随机字符串参数path为$.templateCode值为<paramValue>
#    当开始执行post请求然后等待30秒
#    那么检查接口返回状态码status是<statusCode>
#    那么检查接口响应字符类型中message的值为<messageValue>
#    那么检查接口响应字符类型中code的值为<codeValue>
#    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
#    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
#    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
#    例子:第一部分
#      |paramValue|statusCode|messageValue|codeValue|columnValue|
#      |255|200|成功|000000|发送成功|
#
#  场景大纲:MDP-2798-请求参数templateCode为254位时，其他参数正确，点击发送，发送成功，状态返回码为200
#    当修改参数——修改类型为指定长度随机字符串参数path为$.templateCode值为<paramValue>
#    当开始执行post请求然后等待10秒
#    那么检查接口返回状态码status是<statusCode>
#    那么检查接口响应字符类型中message的值为<messageValue>
#    那么检查接口响应字符类型中code的值为<codeValue>
#    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
#    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
#    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
#    例子:第一部分
#      |paramValue|statusCode|messageValue|codeValue|columnValue|
#      |254|200|成功|000000|发送成功|

  #  场景大纲:MDP-2797-请求参数templateCode为1位时，其他参数正确，点击发送，发送成功，状态返回码为200
#    当修改参数——修改类型为指定长度随机字符串参数path为$.templateCode值为<paramValue>
#    当开始执行post请求然后等待10秒
#    那么检查接口返回状态码status是<statusCode>
#    那么检查接口响应字符类型中message的值为<messageValue>
#    那么检查接口响应字符类型中code的值为<codeValue>
#    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
#    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
#    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
#    例子:第一部分
#      |paramValue|statusCode|messageValue|codeValue|columnValue|
#      |254|200|成功|000000|发送成功|

    #domainName超过255位
  场景大纲:MDP-2804请求参数domainName超过255位，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定长度随机字符串参数path为$.domainName值为<paramValue>
    当执行post请求
  #那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|columnValue|
      |256|400|200000|domainName必须为1-255位|

#    #sceneType超过64位
#  场景大纲:请求参数sceneType超过64位，其他参数正确，点击发送，发送失败，状态返回码为400
#    当修改参数——修改类型为指定长度随机字符串参数path为$.sceneType值为<paramValue>
#    当执行post请求
#  #那么检查接口响应字段中是否包含<messageUUID>
#    那么检查接口返回状态码status是<statusCode>
#    那么检查接口响应字符类型中code的值为<codeValue>
#    例子:第一部分
#      |paramValue|statusCode|codeValue|columnValue|
#      |65|400|200000|sceneType必须为1-64位|

#from超过128位
  场景大纲:MDP-2808请求参数from超过128位，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定长度随机字符串参数path为$.from值为<paramValue>
    当执行post请求
  #那么检查接口响应字段中是否包含<messageUUID>
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    例子:第一部分
      |paramValue|statusCode|codeValue|columnValue|
      |129|400|200000|from必须为1-128位|

  #测试用例已废弃
#  场景大纲:MDP-2869请求参数fromName超过255位，其他参数正确，点击发送，发送失败，状态返回码为400
#    当修改参数——修改类型为指定长度随机字符串参数path为$.fromName值为<paramValue>
#    当执行post请求
#  #那么检查接口响应字段中是否包含<messageUUID>
#    那么检查接口返回状态码status是<statusCode>
#    那么检查接口响应字符类型中code的值为<codeValue>
#    例子:第一部分
#      |paramValue|statusCode|codeValue|columnValue|
#      |256|400|200000|fromName必须为1-255位|


  场景大纲:MDP-2787请求参数fromName节点值为空，其他参数正确，点击发送，发送失败，状态返回码为400
    当修改参数——修改类型为指定字符串参数path为$.fromName值为<paramValue>
    当开始执行post请求然后等待10秒
    那么检查接口返回状态码status是<statusCode>
    那么检查接口响应字符类型中code的值为<codeValue>
    那么检查接口响应字符类型中message的值为<messageValue>
    并且检查响应报文中jsonPath为$.targetList[0]是否存在节点名为messageUUID的节点
    并且检查响应报文中jsonPath为$.targetList[1]是否存在节点名为messageUUID的节点
    并且检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:
      |paramValue|statusCode|codeValue|messageValue|columnValue|
      ||200|000000|成功|发送成功|


  场景大纲:模版非用户组类型邮件发送接口/mail/template/address/send
    * 用例标题为<caseTitle>
    * 修改参数——修改类型为<alterType>参数path为<jsonPath>值为<paramValue>
    * 开始执行post请求然后等待5秒
    * 检查接口返回状态码status是<statusCode>
    * 检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    * 检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    * 检查接口响应——检查类型为<checkType3>节点path为<jsonPath3>预期结果为<expectValue3>
    * 检查本次接口调用产生的记录在数据库表mdp_mail.t_send_record中列send_status的值为<columnValue>
    例子:
      |alterType|jsonPath|paramValue|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|columnValue|caseTitle|
      |指定字符串|$.templateCode|123456789012345678901234567890123456789012345678901234567890|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.targetList[0].messageUUID|^\\w{32}|发送成功|MDP-2799	请求参数templateCode为60位时，其他参数正确，点击发送，发送成功，状态返回码为200|
      |指定字符串|$.templateCode|12345678901234567890123456789012345678901234567890123456789|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.targetList[0].messageUUID|^\\w{32}|发送成功|MDP-2798	请求参数templateCode为59位时，其他参数正确，点击发送，发送成功，状态返回码为200|
      |指定字符串|$.templateCode|b|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.targetList[0].messageUUID|^\\w{32}|发送成功|MDP-2797	请求参数templateCode为1位时，其他参数正确，点击发送，发送成功，状态返回码为200|
      |指定长度随机字符串|$.from|1|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.targetList[0].messageUUID|^\\w{32}|发送成功|MDP-2805	请求参数from为1位时，其他参数正确，点击发送，发送成功，状态返回码为200|
      |指定长度随机字符串|$.domainName|254|400|节点值是否等于|$.code|200000|节点值是否等于|$.suceeded|false|节点值是否包含|$.message|对应的系统无可用的API_KEY|ROUTE_FAILED|MDP-2802	请求参数domainName为254位时，其他参数正确，点击发送，发送成功，状态返回码为200|
      |指定长度随机字符串|$.domainName|255|400|节点值是否等于|$.code|200000|节点值是否等于|$.suceeded|false|节点值是否包含|$.message|对应的系统无可用的API_KEY|ROUTE_FAILED|MDP-2803	请求参数domainName为255位时，其他参数正确，点击发送，发送成功，状态返回码为200|
      |指定长度随机字符串|$.domainName|1|400|节点值是否等于|$.code|200000|节点值是否等于|$.suceeded|false|节点值是否包含|$.message|对应的系统无可用的API_KEY|ROUTE_FAILED|MDP-2801	请求参数domainName为1位时，其他参数正确，点击发送，发送成功，状态返回码为200|
      |指定字符串|$.from|1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123@wanda-mail.liyanjie.top|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.targetList[0].messageUUID|^\\w{32}|发送成功|MDP-2806	请求参数from为127位时，其他参数正确，点击发送，发送成功，状态返回码为200|
      |指定字符串|$.from|12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234@wanda-mail.liyanjie.top|200|节点值是否等于|$.code|000000|节点值是否等于|$.message|成功|节点值是否匹配|$.targetList[0].messageUUID|^\\w{32}|发送成功|MDP-2807	请求参数from为128位时，其他参数正确，点击发送，发送成功，状态返回码为200|


  场景大纲:模版非用户组类型邮件发送接口/mail/template/address/send
    * 用例标题为<caseTitle>
    * 修改参数——修改类型为<alterType01>参数path为<jsonPath01>值为<paramValue01>
    * 修改参数——修改类型为<alterType02>参数path为<jsonPath02>值为<paramValue02>
    * 开始执行post请求然后等待0秒
    * 检查接口返回状态码status是<statusCode>
    * 检查接口响应——检查类型为<checkType1>节点path为<jsonPath1>预期结果为<expectValue1>
    * 检查接口响应——检查类型为<checkType2>节点path为<jsonPath2>预期结果为<expectValue2>
    * 检查接口响应——检查类型为<checkType3>节点path为<jsonPath3>预期结果为<expectValue3>
    例子:
      |alterType01|jsonPath01|paramValue01|alterType02|jsonPath02|paramValue02|statusCode|checkType1|jsonPath1|expectValue1|checkType2|jsonPath2|expectValue2|checkType3|jsonPath3|expectValue3|caseTitle|
      |指定长度随机字符串|$.domainName|254|指定长度随机字符串|$.domainName|254|400|节点值是否等于|$.code|200000|节点值是否等于|$.suceeded|false|节点值是否包含|$.message|对应的系统无可用的API_KEY|MDP-2802	请求参数domainName为254位时，其他参数正确，点击发送，发送成功，状态返回码为200|
      |指定长度随机字符串|$.domainName|1|指定长度随机字符串|$.domainName|1|400|节点值是否等于|$.code|200000|节点值是否等于|$.suceeded|false|节点值是否包含|$.message|对应的系统无可用的API_KEY|	MDP-2801	请求参数domainName为1位时，其他参数正确，点击发送，发送成功，状态返回码为200|


