---
title: 免费域名配合 cloudflare 实现的域名邮箱
date: 2026-06-06 04:30:00
categories:
  - 教程
  - 网络
tags:
  - 域名邮箱
  - Cloudflare
  - 域名
  - 白嫖
---

域名邮箱目前有两种几乎免费的办法（个人使用完全免费）

# 1. cloudflare 域名配置电子邮件路由

默认各位都有了 cloudflare 账号，并且域名已经托管到 cloudflare，（没域名的看这里：[免费域名合集（缓慢更新）](/2026/05/02/免费域名合集（缓慢更新）/)）

## 1.1 配置电子邮件路由

登录 cloudflare 后，点击左侧的计算—电子邮件服务—电子邮件路由

![电子邮件路由入口](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPRaiOZUBB70OsiIMUcKaWFxpKL_zAAAtcLaxsQFCBFpIXm_WdQpB0BAAMCAAN5AAM7BA.png)

点击接入域名

![接入域名](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPSaiOZpylQcEzu8g7RdTV2tcyBXlQAAtkLaxsQFCBFu_crUWbOh1UBAAMCAAN3AAM7BA.png)

点击搜索区域，选择一个你的域名

![选择域名](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPTaiOZ2FSdcDOa4_xYgUeKfge1gh4AAtsLaxsQFCBFUniq43Exq2kBAAMCAAN5AAM7BA.png)

点击路由规则—点击右侧三个点

![路由规则](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPUaiOaMVfMU6_EslUQvTv7jNH6bTYAAtwLaxsQFCBFcOl1kyXuOyEBAAMCAAN3AAM7BA.png)

操作选择发送到电子邮件，目标选择你的邮箱。以我的域名举例

当 xx@xcfake149.bond (此处 xx 可以换为任何内容)收到邮件，就会自动转发到 zhuanfa@xcfake150.asia 这个邮箱。

缺点就是，只能接收不能发送，并且也不好管理。但是部署非常简单

另外

添加邮箱先点击目标地址

![目标地址](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPWaiObOav2ZcbQzRtpz_2ad750RUsAAt4LaxsQFCBFtvfm30lZEnUBAAMCAAN4AAM7BA.png)

再点击下方添加地址即可

![添加地址](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPXaiOblBGzVuc4q-kgtEYzwVg7g-8AAt8LaxsQFCBFkUJdm_ITUygBAAMCAAN5AAM7BA.png)

# 2. cloudmail

同样是域名邮箱，但是更方便管理，也可以配合第三方的免费服务实现发邮件

## 1.1 fork 仓库并部署至 cloudflare

首先点击 [maillab/cloud-mail：基于 Cloudflare 的电子邮件服务](https://github.com/maillab/cloud-mail)

把项目 fork 到自己的仓库，没有 GitHub 的就去注册一下，有个邮箱就行了

官方写了非常详细的教程，包括部署和配置邮件发送，就不在这写了

官方部署教程：[界面部署 | Cloud Mail](https://doc.skymail.ink/guide/dashboard.html)

配置发送教程：[邮件发送 | Cloud Mail](https://doc.skymail.ink/system/sending.html)
