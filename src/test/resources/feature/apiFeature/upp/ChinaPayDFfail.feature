## language: zh-CN
#功能: 银联渠道单笔代付失败交易和交易状态查询
#  场景大纲:银联渠道单笔代扣_农商(101)_失败交易网关返回_不传入ChannelCode (t_app_account>1 & t_channel_ability=0)交易
#    假如项目<name>做ChinaPayDFSuccess_post请求数据准备<path>和<param>
#    当提取<txnSeqNo>执行post请求
#    那么检查接口响应字段中是否包含<K_code>
#    那么检查接口响应字段中是否包含<txnAmt>
#    那么检查接口响应字段中是否包含<splitTxnCount>
#    那么检查接口是否返回正确<k_txnSeqNo>
#    例子:
#      |name|path|param|K_code|txnAmt|splitTxnCount|k_txnSeqNo|
#      |upp|/upp/cpg/v1/txns/sinPays|{"bizTypeCode":301,"businessOrderNo":"201612201000000000006","bankCode":"ICBC","bankBranchName":"工商银行","cardType":3,"cardNo":"$D755ADE3E97C17CF826742EDE2286C3038B7E370BB420ADF","accountName":"张三","idTypeCode":1,"idNumber":"$53029423F2DF1FFEA58B343421BCFC54B336F6E4B4EED711","provinceCode":"10031","cityCode":"10031001","currencyCode":"CNY","txnAmt":"0.12","purpose":"代付","notifyUrl":"http://10.214.168.93:8080/upp/cpg/v1/mock/callback","PWID":"123434","customerId":"customerId","ext1":"1","ext2":"2","ext3":"3"}|UPP-CPG-10000|0.12|1|^wandawealth-([a-z]{20}[0-9]{11})-1$|
# 场景大纲:银联渠道代付交易状态查询_工行_失败交易银联返回_不传入channelCode (t_app_account>1 & match CP)查询
#    假如 项目<name>做ChinaPayDFSuccess_get交易状态查询数据准备<path>
#    当 等待后执行get请求
#    那么检查接口响应字段中是否包含<K_code>
#    那么校验接口状态txnSeqNo是否返回正确<txnSeqNo>
#    那么检查接口响应字段中是否包含<txnStatus>
#    那么检查接口响应字段中是否包含<channelCode>
#    那么检查接口响应字段中是否包含<extStatus>
#    例子:
#      |name|path|K_code|txnSeqNo|txnStatus|channelCode|extStatus|
#      |upp|/upp/cpg/v1/txns/|UPP-CPG-10000|^wandawealth-([a-z]{20}[0-9]{11})-1$|90|CHINAPAY|\d{16}|
#  场景大纲:银联渠道单笔代付_失败交易网关返回_不传入channelCode (CurrencyCode=CNNY then t_app_account =0)交易
#    假如项目<name>做ChinaPayDFSuccess_post请求数据准备<path>和<param>
#    当提取<txnSeqNo>不是JsonArray执行post请求
#    那么检查接口响应字段中是否包含<K_code>
#    例子:
#      |name|path|param|K_code|
#      |upp|/upp/cpg/v1/txns/sinPays|{"bizTypeCode":301,"businessOrderNo":"201612201000000000006","bankCode":"ABC","bankBranchName":"银行","cardType":3,"cardNo":"$450DAE224B6B467DA14F89ED54995CC19E6435AA9732EC7D","accountName":"张三","idTypeCode":1,"idNumber":"$53029423F2DF1FFEA58B343421BCFC54B336F6E4B4EED711","provinceCode":"10031","cityCode":"10031001","currencyCode":"CNYY","txnAmt":"1.01","purpose":"代付","notifyUrl":"http://10.214.168.93:8080/upp/cpg/v1/mock/callback","PWID":"123434","customerId":"customerId","ext1":"1","ext2":"2","ext3":"3"}|UPP-CPG-32010|
#
#
