# language: zh-CN
功能: 发放优惠券

  场景大纲: 创建优惠券
    假如项目<name>做post请求数据准备<path>和<param1>
    当执行post请求
    那么检查接口返回状态码status是<code>
    例子:
      |name|path|param1|code|
      |coupon |/coupons|{"title":"this is a test coupon","type": "interest","amount": 1000,"lowerLimit": 2000,"startDate": "2017-03-13","endDate": "2018-06-30","products": [10561, 10562, 10563],"createBy": "yaolei"}|201|

  场景大纲: 查询优惠券列表
    假如项目<name>做get请求数据准备<path>
    当couponId_执行get请求
    那么检查接口响应字段中是否包含<pageNum>
    例子:
      |name |path|pageNum|
      |coupon |/coupons|pageNum|

  场景大纲: 查询优惠券详情
    假如项目<name>做couponId_get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<title>
    例子:
      |name |path|title|
      |coupon|/coupons|this is a test coupon|


  场景大纲: 更新优惠券
    假如项目<name>做couponId_put请求数据准备<uri1>和<param>
    当执行put请求
    那么检查接口返回状态码status是<code>
    例子:
      |name|uri1|param|code|
      |coupon|/coupons|{"products": [10561, 10562, 10563]}|200|


  场景大纲: 创建发放批次
    假如项目<name>做couponId_post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<code>
    例子:
      |name  |path|param|code|
      |coupon|/coupon/issues|{"issueType":"channel","totalCount":100,"targets":[22811],"notifyMethod":"sms","createBy":"yaolei","issueMap":"{}"}|201|


  场景大纲: 查询发放批次列表
    假如项目<name>做get请求数据准备<path>
    当issueId_执行get请求
    那么检查接口响应字段中是否包含<pageNum>
    例子:
      |name|path|pageNum|
      |coupon|/coupon/issues|pageNum|


  场景大纲: 查询发放批次详情
    假如项目<name>做issueId_get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<title>
    例子:
      |name |path|title|
      |coupon |/coupon/issuesQuery?pageIndex=1&pageCount=4&issueId=|this is a test coupon|

  场景大纲: 向特定用户发放优惠券
    假如项目<name>做issueId_get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<title>
    例子:
      |name |path|title|
      |coupon |/issue/userCoupon?userId=22811&issueId=|this is a test coupon|


  场景大纲: 修改发放批次
    假如项目<name>做issueId_put请求数据准备<path>和<param>
    当执行put请求
    那么检查接口返回状态码status是<code>
    例子:
      |name |path|param|code|
      |coupon|/coupon/issues|{"status":"cancel"}|200|

  场景大纲: 查询用户优惠券列表
    假如项目<name>做get请求数据准备<path>
    当userCouponId_执行get请求
    那么检查接口响应字段中是否包含<userCouponId>
    例子:
      |name|path|userCouponId|
      |coupon|/users/22811/coupons?registerTime=1505371696|userCouponId|

  场景大纲: 查询用户优惠券
    假如项目<name>做userCouponId_get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<title>
    例子:
      |name |path|title|
      |coupon|/users/22811/coupons|this is a test coupon|

  场景大纲: 修改用户优惠券
    假如项目<name>做userCouponId_put请求数据准备<path>和<param>
    当执行put请求
    那么检查接口响应字段中是否包含<ticket>
    例子:
      |name|path|ticket|param|
      |coupon |/users/22811/coupons|ticket|{ "action":"lock"}|

  场景大纲: 清除用户新优惠券
    假如项目<name>做post请求数据准备<path>和<param>
    当执行post请求
    那么检查接口返回状态码status是<code>
    例子:
      |name |path|code|param|
      |coupon|/users/22811/actions/clearNew|200|{}|

  场景大纲: 获取用户汇总信息
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<newCount>
    例子:
      |name |path|newCount|
      |coupon |/users/22811/couponSummary?registerTime=1505371696|newCount|

  场景大纲: 获取优惠券统计信息
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<couponType>
    例子:
      |name |path|couponType|
      |coupon|/statistics?startTime=1494202088&endTime=1507132799000|couponType|

  场景大纲:删除优惠券
    假如项目<name>做couponId_delete请求数据准备<path>
    当执行delete请求
    那么检查接口响应字符类型中errorMessage的值为<errorMessage>
    那么检查接口响应int类型中errorCode的值为<errorCode>
    例子:
      |name|path|errorMessage|errorCode|
      |coupon|/coupons|此优惠券已在使用|4008|