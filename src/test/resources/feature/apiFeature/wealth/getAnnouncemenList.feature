# language: zh-CN
功能: 获取公告信息
  场景大纲: 公告
    假如项目<name>做get请求数据准备<path>
    当执行get请求
    那么检查接口响应字段中是否包含<string>
    例子:
      |name |path|string|
      |wealth|/homeAnnouncementList|\\[*\\]|