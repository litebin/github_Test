# language: zh-CN
功能: 银联渠道单笔代付失败交易和交易状态查询
  场景大纲:银联渠道单笔代扣成功_工行
    假如项目<name>做ChinaPayDFSuccess_post请求数据准备<path>和<param>
    当提取<txnSeqNo>执行post请求
    那么检查接口响应字段中是否包含<K_code>
    那么检查接口响应字段中是否包含<txnAmt>
    那么检查接口响应字段中是否包含<splitTxnCount>
    那么检查接口是否返回正确<k_txnSeqNo>
    例子:
      |name|path|param|K_code|txnAmt|splitTxnCount|k_txnSeqNo|
      |upp|/upp/cpg/v1/txns/sinCuts|{"bizTypeCode":301,"businessOrderNo":"100201612260913","bankCode":"ICBC","cardType":2,"cardNo":"$D755ADE3E97C17CF826742EDE2286C3038B7E370BB420ADF","accountName":"accountName3","idTypeCode":1,"idNumber":"$296000AB19D146DA4DDB9A9B2E3F2985230AF3D1D8D39219","currencyCode":"","txnAmt":"1.01","canSplit":"0","purpose":"代扣","priv1":"22","channelCode":"CHINAPAY","notifyUrl":"http://10.214.168.93:8080/upp/cpg/v1/mock/callback","PWID":"","customerId":"customerId02","ext1":"","ext2":"","ext3":""}|UPP-CPG-10000|1.01|1|^wandawealth-([a-z]{20}[0-9]{11})-1$|
