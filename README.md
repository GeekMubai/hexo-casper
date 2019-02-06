# Hexo主题casper使用教程
我看到的一个好的主题，对其中的部分代码进行了修改。 
原项目地址 https://github.com/xzhih/hexo-theme-casper
DEMO https://blog.geekmubai.com

## 特性
- 文章封面图（在首页文章摘要上显示）
- 文章特色图（在文章详细页面上置顶）
- 自定义菜单
- 自定义 favicon, logo, 头部背景, 作者头像
- 社交链接 ( 现在支持 github、哔哩哔哩、YouTube、微博、推特、脸书(我将它改为了CDSN )
- 共三个插件（最新文章、分类、标签云）
- 内容目录
- 代码高亮
- 响应式网页设计
- 懒加载
- 主题集成本地搜索
- Valine 评论系统
- Baidu 链接提交、Google Analytics
- Service Worker

## 安装方法
### 下载
在hexo目录下执行
```
git clone https://github.com/GeekMubai/hexo-casper.git themes/hexo-casper
```
### 激活
把hexo配置文件 `_config.yml` 里的 `theme` 字段内容改为 `hexo-casper` 。

### 升级
建议先备份一下在执行下面的操作。
```
cd themes/casper 
git pull
```
添加统一的文章模板参数
把下面的内容加入到 `scaffolds/post.md`,
```
cover_img:     # 在文章摘要上显示
feature_img:   # 在文章详细页面上置顶
description:   # 文章描述
keywords:      # 关键字
```
### valine 评论系统
使用方法请到他的官网查看，并结合下面的配置文件详细添加appID和appKey
https://valine.js.org/

### 添加关于页面
```
hexo new page about
```

## 自定义配置
```
# Config
rss: https://geekmubai.com/feed         
favicon: https://mubai.oss-cn-hangzhou.aliyuncs.com/icon.png
blog_logo: 
header_image: https://mubai.oss-cn-hangzhou.aliyuncs.com/background.jpg
bio: 做一个特立独行的少数派
post_toc: true

# Keywords
keywords: hexo, casper, ghost, theme

# Menu
menu:
  ABOUT: /about
  ARCHIVES: /archives
  # you can add here

# author
author_image: https://mubai.oss-cn-hangzhou.aliyuncs.com/author.png
author_bio: 一个有趣的人
author_location: 安徽·安庆

# Social Links
social:
  weibo: https://weibo.com/geekmubai
  github: https://github.com/geekmubai
  bilibili: https://space.bilibili.com/167817331/#
  facebook: https://blog.csdn.net/geekmubai
  twitter: 
  telegram:
  youtube: 
  # You only can use that I have added, I will keep adding

# Footer Links
footer_text: 
  皖ICP备17018037号: http://www.miitbeian.gov.cn
  # title: link
  # 粤公网安备xxxxxxx号: http://www.beian.gov.cn

# Widget
widgets:
  recent_posts: true
  category: true
  tagcloud: true
  # This is a simple theme, I think 3 is enough.

# Gallery
# https://github.com/sachinchoolur/lightgallery.js
lightgallery: true

# LazyLoad
# home page has enabled, this value is to post page
# https://github.com/dinbror/blazy
lazyload: true

# Local Search
local_search: true

# Comment
# https://valine.js.org
comment: true
valine:
  notify: false # mail notifier , https://github.com/xCss/Valine/wiki 
  verify: false # Verification code
  appId: 
  appKey: 
  placeholder: 你是魔鬼吧，都不留言！ # comment box placeholder
  pageSize: 10 # pagination size
  avatar: mm # gravatar style

# PWA
# you need create a manifest.json file in hexo's source folder
manifest: false
service_workers: false

navColor: '3c484e'

# Baidu Push
baidu: false

# Google Analytics
googleAnalytics: false
GA_TRACKING_ID: UA-XXXXXXXXXX-1

```
