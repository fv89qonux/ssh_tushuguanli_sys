## 本项目实现的最终作用是基于SSH校园图书馆管理系统
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 书架信息管理
 - 修改密码
 - 借阅须知管理
 - 图书信息管理
 - 图书借阅管理
 - 管理员登录
 - 类别管理
 - 读者信息管理
### 第2个角色为读者角色，实现了如下功能：
 - 借阅须知查看
 - 图书信息查询
 - 我的信息管理
 - 我的借阅信息
 - 读者登录
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_tushuguanli_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [t_admin](#t_admin) | 管理员表 |
| [t_book](#t_book) | 图书信息表 |
| [t_catelog](#t_catelog) |  |
| [t_gonggao](#t_gonggao) |  |
| [t_jieyue](#t_jieyue) |  |
| [t_leibie](#t_leibie) |  |
| [t_user](#t_user) | 用户表 |

**表名：** <a id="t_admin">t_admin</a>

**说明：** 管理员表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | UserId |   int   | 10 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | userName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | userPw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |

**表名：** <a id="t_book">t_book</a>

**说明：** 图书信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | book_id |   int   | 10 |   0    |    N     |  Y   |       | 图书ID  |
|  2   | book_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 图书名称  |
|  3   | book_zuozhe |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | book_chubanshe |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | book_chubanriqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | book_isbm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | book_price |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | catelog_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  9   | leibie_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  10   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_catelog">t_catelog</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | catelog_id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | catelog_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | catelog_del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_gonggao">t_gonggao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | gonggao_id |   int   | 10 |   0    |    N     |  Y   |       | 公告ID  |
|  2   | gonggao_title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 公告标题  |
|  3   | gonggao_content |   varchar   | 5000 |   0    |    Y     |  N   |   NULL    | 公告内容  |
|  4   | gonggao_data |   varchar   | 77 |   0    |    Y     |  N   |   NULL    |   |
|  5   | fujian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 附件  |

**表名：** <a id="t_jieyue">t_jieyue</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | userJiehao |   varchar   | 11 |   0    |    Y     |  N   |   NULL    |   |
|  3   | bookId |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | jieyueShijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | yinghuanShijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | shifouhuan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | guihuanShijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | fajin |   varchar   | 11 |   0    |    Y     |  N   |   NULL    |   |
|  9   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |

**表名：** <a id="t_leibie">t_leibie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |   0    |   |
|  2   | mingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名称  |
|  3   | del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

**表名：** <a id="t_user">t_user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | user_id |   int   | 10 |   0    |    N     |  Y   |       | 用户ID  |
|  2   | user_realname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户真实名字  |
|  3   | user_sex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户性别  |
|  4   | user_age |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户年龄  |
|  5   | user_address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户地址  |
|  6   | user_tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户电话  |
|  7   | user_email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户邮箱  |
|  8   | user_jiehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | user_pw |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户密码  |
|  10   | user_del |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 是否删除  |

