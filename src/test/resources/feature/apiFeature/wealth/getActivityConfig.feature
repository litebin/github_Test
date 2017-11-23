# language: zh-CN
功能: 获取活动配置信息

  场景大纲: 活动配置信息
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<shareUrl>
    例子:
      |name|path|shareUrl|
      |wealth|/api/v1/activity/config?activityNo=0320171009000011|shareUrl|