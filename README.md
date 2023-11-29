## 本项目实现的最终作用是基于JSP美食资讯分享预订平台网站
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 修改个人信息
 - 修改密码
 - 团队管理
 - 导游管理
 - 滚动图片管理
 - 用户管理
 - 留言管理
 - 站内资讯管理
 - 管理员信息管理
 - 管理员登录
 - 网站信息管理
 - 美食分享推荐管理
 - 评论管理
 - 预定受理
 - 餐厅管理
### 第2个角色为用户角色，实现了如下功能：
 - 修改个人信息
 - 修改密码
 - 按分类查看
 - 提交留言
 - 查看我的美食分享
 - 查看我的预定
 - 查看站内资讯
 - 查看网站简介
 - 查看美食分享
 - 查看美食详情
 - 用户登录
 - 联系我们
## 数据库设计如下：
# 数据库设计文档

**数据库名：** food_zixunsite

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [article](#article) |  |
| [guides](#guides) |  |
| [hbnews](#hbnews) |  |
| [messages](#messages) |  |
| [mixinfo](#mixinfo) |  |
| [orders](#orders) | 订单信息表 |
| [pinlun](#pinlun) |  |
| [pros](#pros) |  |
| [sysuser](#sysuser) |  |
| [tgroup](#tgroup) |  |

**表名：** <a id="article">article</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | ytitle |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  4   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |

**表名：** <a id="guides">guides</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   bigint   | 20 |   0    |    N     |  Y   |       |   |
|  2   | gno |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | gname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  5   | tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |

**表名：** <a id="hbnews">hbnews</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   bigint   | 20 |   0    |    N     |  Y   |       |   |
|  2   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | itype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  5   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  6   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  7   | infotype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 信息类型  |

**表名：** <a id="messages">messages</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   bigint   | 20 |   0    |    N     |  Y   |       |   |
|  2   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  4   | cont |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | recont |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |

**表名：** <a id="mixinfo">mixinfo</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   bigint   | 20 |   0    |    N     |  Y   |       |   |
|  2   | mtitle |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | cotitle |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 小标题  |
|  4   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | infotype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 信息类型  |
|  6   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  7   | remo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="orders">orders</a>

**说明：** 订单信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   bigint   | 20 |   0    |    N     |  Y   |       |   |
|  2   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | tname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 真实名字  |
|  4   | sfid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  6   | dname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | pid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | tprice |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 特价价格  |
|  9   | jt |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | jtprice |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | jd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | jdprice |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | fkstatus |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 付款状态  |
|  14   | acct |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  15   | apass |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  16   | status |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 状态  |
|  17   | muname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  18   | tgroupn |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  19   | tgroupnkey |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="pinlun">pinlun</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   bigint   | 20 |   0    |    N     |  Y   |       |   |
|  2   | saver |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 上传者  |
|  3   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  4   | pid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | tablename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | infotitle |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 信息标题  |
|  7   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  8   | pf |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | remo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="pros">pros</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   bigint   | 20 |   0    |    N     |  Y   |       |   |
|  2   | sname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | city |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 城市名称  |
|  4   | addrs |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | tprice |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 特价价格  |
|  6   | hprice |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | fprice |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | jprice |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | wprice |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | remo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  12   | guide |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  14   | guidekey |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="sysuser">sysuser</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   bigint   | 20 |   0    |    N     |  Y   |       |   |
|  2   | uname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | upass |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | utype |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户类型  |
|  5   | tname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 真实名字  |
|  6   | sfid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | filename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 文件名  |
|  8   | sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  9   | birth |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  11   | addrs |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  13   | status |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 状态  |
|  14   | savetime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 保存时间  |
|  15   | tnamekey |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="tgroup">tgroup</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   bigint   | 20 |   0    |    N     |  Y   |       |   |
|  2   | gname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | guide |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | sdate |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | edate |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | guidekey |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
