# 原创影视模板(适配 feifeicms 4.3)

按 [飞飞CMS 4.3 官方模板规范](https://github.com/feifeicms/feifeicms/tree/master/Tpl/default) 重新编写的一套原创主题。浅色主调 + 一键切换深色模式,顶部横向导航,首页含「热播推荐 / 最近更新 / 分类楼层」,影片页带评论(支持楼中楼回复),完整登录注册与个人中心。完全自适应。

## 目录结构(对应飞飞CMS 4.3 的 ThinkPHP MVC 约定)

```
gimy/
├── preview.html / preview-login.html / preview-register.html
├── preview-center.html / preview-detail.html / preview-play.html  # 离线静态预览(双击打开)
├── Tpl/
│   └── feifei/
│       ├── inc/                       # head/footer 引用片段
│       ├── BlockTheme/                # <include file="BlockTheme:xxx" />
│       │   ├── header.tpl             # 顶部分类导航(加上 搜索 / 主题切换 / 用户)
│       │   ├── footer.tpl             # 页脚
│       │   ├── item_img_vod.tpl       # 影片卡片
│       │   ├── item_txt_vod.tpl       # 最近更新文字行
│       │   ├── item_side_vod.tpl      # Hero 侧栏小项
│       │   ├── vod_inc_hot.tpl        # 本类热播
│       │   ├── vod_inc_related.tpl    # 相关推荐
│       │   ├── forum_inc_vod.tpl      # ★ 影片评论区(嵌入到 detail/play)
│       │   ├── forum_post.tpl         # ★ 评论发布表单
│       │   └── forum_item.tpl         # ★ 单条评论(含楼中楼)
│       ├── Home/
│       │   └── index.tpl              # 首页(Hero + 热播 + 最近更新 + 分类楼层)
│       ├── Vod/
│       │   ├── list.tpl, type.tpl, detail.tpl, play.tpl, search.tpl
│       ├── List/
│       │   ├── list.tpl               # 分类列表
│       │   ├── new.tpl                # ★ 最近更新全部(对应 list/new)
│       │   └── top.tpl                # ★ 热播榜全部(对应 list/top)
│       ├── Forum/
│       │   └── detail_vod.tpl         # ★ 完整评论页(/index.php?s=vod-forum&id=)
│       ├── Special/
│       │   ├── index.tpl              # ★ 专题列表(对应 special/index)
│       │   └── read.tpl               # ★ 专题详情(对应 special/read?id=)
│       ├── Actor/
│       │   ├── index.tpl              # ★ 演员索引(对应 actor/index)
│       │   └── read.tpl               # ★ 演员详情 + 代表作品(actor/read?id=)
│       ├── Role/
│       │   ├── index.tpl              # ★ 角色索引(对应 role/index)
│       │   └── read.tpl               # ★ 角色详情 + 登场作品(role/read?id=)
│       ├── Plot/
│       │   ├── index.tpl              # ★ 剧情题材标签云(对应 plot/index)
│       │   └── read.tpl               # ★ 题材详情 + 该题材作品(plot/read?id=)
│       ├── User/                      # ★ 用户中心
│       │   ├── header.tpl, footer.tpl, center_nav.tpl
│       │   ├── login.tpl              # 登录
│       │   ├── register.tpl           # 注册
│       │   ├── forget.tpl             # 找回密码
│       │   ├── center_index.tpl       # 账号管理
│       │   ├── center_likes.tpl       # 我的收藏
│       │   ├── center_history.tpl     # 观看记录
│       │   ├── center_wish.tpl        # 想看
│       │   ├── center_forum.tpl       # 我的话题
│       │   ├── center_orders.tpl      # 订单管理
│       │   └── inc_item_record.tpl    # 共用片段
│       ├── Slide/, Search/
│       └── ...
└── static/                            # 静态资源(部署时映射到 Public/static/)
    ├── css/style.css                  # 浅色 / 暗色 / 响应式 / 表单 / 评论 / 个人中心 / 专题
    ├── js/main.js                     # 主题切换 / 移动菜单 / Tab / 轮播 / 懒加载
    ├── js/user.js                     # ★ Ajax 登录/注册/找回 + 评论提交 + 点赞 + 楼中楼回复
    └── images/
        ├── loading.svg
        ├── avatar.svg                 # 默认头像
        └── favicon.svg                # 站点图标(SVG,主流浏览器都识别)
```

## 快速预览(无需架站)

| 文件 | 看到什么 |
|---|---|
| [preview.html](preview.html) | 首页 Hero / 热播 / 最近更新 / 分类楼层 |
| [preview-login.html](preview-login.html) | 登录页 |
| [preview-register.html](preview-register.html) | 注册页 |
| [preview-center.html](preview-center.html) | 个人中心(账号管理 + 订单) |
| [preview-detail.html](preview-detail.html) | 内容页 + **影片评论区** |
| [preview-play.html](preview-play.html) | 播放页 + **影片评论区**(含楼中楼) |

任意一个页面右下角的 demo 导航都能跳到其他演示页;右上角太阳/月亮按钮一键切深浅主题。

## 部署到飞飞CMS 4.3

1. `Tpl/feifei/` → 飞飞站点 `Tpl/feifei/`
2. `static/`     → 飞飞站点 `Public/static/`(整目录上传到 Public 下,目录名保持 `static`)
3. 后台 → 站点参数 → 模板风格 → `feifei`,清缓存

> 模板内部统一通过 `{$public_path}static/...` 引用静态资源,运行时输出 `/Public/static/...`,不暴露 cms 名称。

## 用户与评论的接入点

| 功能 | URL | 后端 |
|---|---|---|
| 登录页 | `{:ff_url('user/login')}` | `User/login.tpl`,表单 POST 到 `user/loginpost` |
| 注册页 | `{:ff_url('user/register')}` | `User/register.tpl`,表单 POST 到 `user/post` |
| 找回密码 | `{:ff_url('user/forget')}` | `User/forget.tpl`,表单 POST 到 `user/forgetpost` |
| 退出 | `{:ff_url('user/logout')}` | 飞飞内置 |
| 个人中心 | `{:ff_url('user/center',array('action'=>'index'))}` | `User/center_index.tpl` |
| 我的收藏 | `…array('action'=>'likes')` | `User/center_likes.tpl`,`ff_mysql_record` type=2 |
| 观看记录 | `…array('action'=>'history')` | `User/center_history.tpl`,type=1 |
| 想看 | `…array('action'=>'wish')` | `User/center_wish.tpl`,type=3 |
| 我的话题 | `…array('action'=>'forum')` | `User/center_forum.tpl`,`ff_mysql_forum uid:` |
| 订单 | `…array('action'=>'orders')` | `User/center_orders.tpl`,`ff_mysql_orders` |
| 最近更新全部 | `{:ff_url('list/new')}` | `List/new.tpl`,`ff_mysql_vod order:vod_addtime` |
| 热播榜 | `{:ff_url('list/top')}` | `List/top.tpl`,`ff_mysql_vod order:vod_stars,vod_hits` |
| 专题列表 | `{:ff_url('special/index')}` | `Special/index.tpl`,`ff_mysql_topic` |
| 专题详情 | `{:ff_url('special/read',array('id'=>$tid))}` | `Special/read.tpl`,`ff_mysql_vod topic_id:` |
| 演员索引 | `{:ff_url('actor/index')}` | `Actor/index.tpl`,`ff_mysql_actor` |
| 演员详情 | `{:ff_url('actor/read',array('id'=>$aid))}` | `Actor/read.tpl`,`ff_mysql_vod actor:` |
| 角色索引 | `{:ff_url('role/index')}` | `Role/index.tpl`,`ff_mysql_role` |
| 角色详情 | `{:ff_url('role/read',array('id'=>$rid))}` | `Role/read.tpl`,`ff_mysql_vod role:` |
| 剧情题材 | `{:ff_url('plot/index')}` | `Plot/index.tpl`,`ff_mysql_plot`(标签云) |
| 题材详情 | `{:ff_url('plot/read',array('id'=>$pid))}` | `Plot/read.tpl`,`ff_mysql_vod plot:` |
| 影片评论(嵌入) | `BlockTheme:forum_inc_vod` | 默认在 `Vod/detail.tpl` 与 `Vod/play.tpl` 末尾 |
| 评论全部页 | `{:ff_url('vod/forum',array('id'=>$vod_id))}` | `Forum/detail_vod.tpl` |
| 提交评论 | `{$root}index.php?s=forum-update` | 字段:`forum_cid` `forum_sid=1` `forum_pid` `forum_content` `forum_vcode` |
| 点赞 / 踩 | `index.php?s=ajax-forum-up&id=` 或 `…ajax-forum-down&id=` | user.js 自动处理 |

> 楼中楼回复:子回复也是同一张 `forum` 表的记录,`pid` 字段填主楼 `forum_id` 即可;前端按 `pid=主楼ID` 拉取最多 3 条嵌套展示,更多跳到「全部影评」页。

## 主题切换 / 改色

`static/css/style.css` 顶部 `:root` 与 `[data-theme="dark"]` 两块 CSS 变量集中管理颜色;localStorage 持久化,首次访问跟随系统。

## 响应式断点

| 屏幕宽度 | 列数 | 主要变化 |
|---|---|---|
| ≥ 1101px | 6 列 | 完整布局 |
| 861–1100px | 5 列 | 播放页选集移到下方 |
| 641–860px  | 4 列 | Hero 主图与侧栏堆叠 |
| 381–640px  | 3 列 | 顶部导航变抽屉,搜索折叠 |
| ≤ 380px    | 2 列 | logo 文字隐藏 |
