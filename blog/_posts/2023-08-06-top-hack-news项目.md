---
layout: default
title: top hack news 收集
---

# 背景
Hack News 的新闻质量一直是毋庸置疑的，但榜单更新太快，主页也过于简单，为此很多人做了相关的扩展。
比如 Hack News 根据 score 进行 rss [订阅](https://hnrss.github.io/)、hackNews 客户端分类型的top榜单。
结合从个人开发者论坛学到的"个人项目要从维护成本考虑，比如能不用server就不用server"，想到利用 github pages 刚好可以做一个定时爬取，静态展示的页面。

# 实现
### 1. 读取
利用 github action 功能，例行调用 hacknews 的API，定时获取最新的top1新闻，
具体用 shell 实现，hack news 的 [API](https://github.com/HackerNews/API) 是真的简洁。但简单的 API 已经足够用了。
编码实现：https://github.com/wa008/wa008.github.io/blob/main/topHackNews/runHackNews.sh

### 2. 存储
读取后存储到github 仓库中。
github action 确实做的丝滑，action中每次push代码默认不需要输入token，直接push就行，体验很棒。
代码实现：https://github.com/wa008/wa008.github.io/blob/main/.github/workflows/getHackNews.yml

### 3. 展示
利用 github pages 进行内容展示，就生成了历史所有的 hacknews 最热的内容榜单。
这其中主要是要跟原来的博客分开，需要做一个分类功能，其实就是把根目录的 _posts 文件夹转移到特定的分类下，比如 topHackNews 中。
整完了发现rss订阅也会订阅 hacknews的内容，这肯定不行，rss订阅的频率也太高了。原来rss订阅用的kekyll-feed 插件，但它的分类功能一直无法生效，直接无解。。
最终重新自定义了 rss 订阅文件，解决了这个问题，hacknews更新的订阅，以后需要了再搞吧

# 工具总结
Hack News: 提供内容来源，能提供简洁的API
github action: 定时运行任务，不需要自己提供server
github pages: 展示内容
[API archive](https://github.com/public-apis/public-apis): 还发现了一个非常帮的免费API库，以后有需求了都可以找找

# 结论
成果：https://informal.top/topHackNews
第一次做项目还挺有意思的，现在的各种工具都太齐全了，甚至不需要自己搭server，都能部署自动更新的网站。
现在缺少的只是好的创意。
不需要部署server，这项目应该能存活挺长时间的吧