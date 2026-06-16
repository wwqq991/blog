---
title: 关于IP与链式代理
date: 2026-06-16 10:39:00
updated: 2026-06-16 10:45:00
password: xczs66
categories:
  - 网络
tags:
  - 代理IP
  - 住宅IP
  - 链式代理
  - 3x-ui
---

# 0. 前言：为什么要固定IP

之前介绍了vps自建VPN，这次就更新一下落地IP的事情。之前利用vpngate来实现家宽落地确实没问题，但是大部分的软件风控逻辑并不任何这种行为，毕竟没人会天天到处乱跑，尤其是触发了不可能旅行之后，风控风险会大幅上升

## 0.1 不可能旅行

所谓不可能旅行，也就是物理上无法实现的旅行，即上一秒你IP还在香港，下一秒就到了洛杉矶。这在物理上是不可能实现的，因此风控模型就会认定你被盗号。轻则要求验证，重则直接封号

## 0.2 如何解决

解决办法很简单，只需要固定自己的IP即可，也就是买一个IP。

## 0.3 自建VPN了还需要接落地IP吗

在我看来是需要的，虽说现在你能买到的基本都是机房IP，只是有些伪装的比较好，检测出来是ISP。

某些软件遇到机房IP会拒绝注册或者使用。而且落地节点与自建VPN并不一定要一起使用。你也可以买机场，自己配置落地IP或者链式代理来使用纯净的IP，而不是使用万人骑IP

# 1. 挑选落地IP

落地IP，也就是所谓的住宅IP，卖家有很多，我只写我用过的

## 1.1 cliproxy

链接：https://share.cliproxy.com/share/dsy8ryghb

缺点：有限速，一般是限制为15mbps

售价：

![cliproxy售价](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAP5ajEWbYr72Y1t09fkUeUJNXEDd98AAhIMaxuaPIlFcgtR9zhrf8kBAAMCAAN5AAM8BA.png)

优点：兼顾了价格和质量，就是有限速

购买建议：我只买过jp的IP，用着没什么问题。我建议是买us的IP，毕竟你以后要换平台的话，jp的IP有些平台没有，支持支付宝付款

## 1.2 miyaIP

链接：https://www.miyaip.com/?invitecode=1915963

缺点：价格略贵

售价：一个月6到11美元不等

优点：IP质量非常高，基本上都是双ISP ，并且usIP可以精确到州，如加州，新泽西等，有ai优化线路，也有专门某运营商的线路。

重点是，用这个你甚至不需要自己有一个vpn。miya会给你配置一个中转，虽然限速在20mbps。但是对于不想太折腾的人就是首选。可以直接使用socks协议链接

购买建议：买过一次加州的IP，质量非常高，基本检测不出问题，其他的没试过，支持微信与支付宝付款

说实话我还真挺想换回来用的

## 1.3 webshare

如果你觉得还是太贵了，那就来看看webshare吧

网站：https://www.webshare.io/?referral_code=cmmp1n69ljs0

缺点：需要一张外币卡，另外就是IP优点抽奖，默认有10次机会进行更换

售价：年付仅需8.4美元，没错，年付8.4

优点：极致的便宜，这价格在某些厂商那就能买一年，但是在webshare能买一年

购买建议：

![webshare购买建议](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAP6ajEZvrXOL8Ac0JOO-CuxtJksDugAAhQMaxuaPIlFmM71BrIXsq8BAAMCAAN3AAM8BA.png)

这样选才是8.4一年

目前买了美国的，用着还可以。具体分析可以参考本站的《关于webshare的IP》https://blog.xcfake150.asia/2026/05/10/2026-webshare-ip/

## 1.4 nexip

价格：

![nexip价格](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBC2oxJnXDbBo_3g6LOf75BFIOqur0AAI1DGsbmjyJRUEqibfLAAHQNwEAAwIAA3kAAzwE.png)

连接：https://user.nexip.net/#/auth/register?ref=OZJ4ZL86

缺点：略贵

优点：IP非常全，主流的几乎都有，短效IP更是几乎覆盖全球

购买建议：依旧是建议美国IP，除了币安以外，基本干什么都方便

# 2. 使用IP

IP已经买完，无论你在什么地方买的，都会得到IP，端口，用户名，密码。准备好这四个，我们进行下一步

## 2.1 vps自建配置出站

这部分在vps自建节点那一期说过一点，这里重新说（面板更新了，有一部分东西不一样了）

### 2.1.1 配置出站

我默认各位已经自己建好了节点，用了3x-ui面板。不知道怎么建的，看https://blog.xcfake150.asia/2026/06/02/2026-vps-self-hosted-vpn-guide/

首先进入面板

![进入面板](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAP7ajEbDXIpRzvNTfmqVqxWHBKZU_kAAiMMaxuaPIlFyxEEYq3DXb4BAAMCAAN5AAM8BA.png)

左边自下而上第四个就是出站，点击一下。

![出站列表](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAP8ajEbRzEX8Mz8Ei6G19881LH1yIYAAiQMaxuaPIlFA75wGVSN7l8BAAMCAAN3AAM8BA.png)

点击添加出站，协议选择socks/http，此处以socks为例

标签随便写，地址就是你买的IP地址，依次输入端口，用户名，密码。点击保存更改

点击右边的闪电图标，有延迟说明可以使用

（注意：webshare的IP有时候会有bug，明明用户名和密码没问题，但是就是显示用户名或者密码错误。此时去webshare后台主动修改用户名和密码即可，点击代理设置即可修改）

![webshare修改密码](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAP9ajEcSZaBB2Yxe5POxaNw1V_mASUAAigMaxuaPIlF93YOpktLVu8BAAMCAAN4AAM8BA.png)

保存后重启面板

### 2.1.2 配置路由规则

只有出站是不够的，得告诉面板哪个入站走哪个出站才行

![路由规则](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAP-ajEccAABssTRY-YAAZfc6GbiLLzecQACKQxrG5o8iUU2VY4hVTuAtgEAAwIAA3gAAzwE.png)

点击路由规则

再点击上面的路由规则

点击新建规则（注意，此时默认你已经建好了至少一个入站节点，没建的请回顾：https://blog.xcfake150.asia/2026/06/02/2026-vps-self-hosted-vpn-guide/）

点击入站标签，选一个你想用来接纯净落地IP的入站节点

![入站标签](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAP_ajEdKWkqZFwNtIdDrKyX6ZRyvBgAAisMaxuaPIlFyz2beoAO0qcBAAMCAAN4AAM8BA.png)

再点击出站，选择你刚才新建的出站

![选择出站](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBAAFqMR1CA1BQB2NTDech3zEGTy7figACLAxrG5o8iUXpRc859_iDwAEAAwIAA3gAAzwE.png)

点击创建，保存并重启面板

你可以把用来接出站的节点改一个方便记忆的名字，比如xx静态之类的

导入订阅链接，选择该节点，就会默认走你选择的出站，而不是机房IP

## 2.2 链式代理

这也是为什么我说，不自建节点也可以买一个IP来用，因为这个IP在中国大陆是无法链接的，所以需要一个节点，先把网络代理出去，再连接落地IP。

### 2.2.1 v2rayn

先介绍Windows上最常用的v2rayn如何配置，其他软件也是大同小异

假设你没有自建，只有机场，流程如下

打开v2rayn

点击加号

![点击加号](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBAWoxHoeUPjO0r6dqiSqZt6kq-A5TAAItDGsbmjyJRVaPYQFkhBVpAQADAgADeAADPAQ.png)

导入你的机场订阅连接，确保可以使用

点击配置项，新建socks

![新建socks](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBAmoxHtEqLrzFN3Gb6YWCcQqvnTzXAAIuDGsbmjyJRdEfP0-73n_WAQADAgADeAADPAQ.png)

输入地址，端口，用户名，密码。其他暂时不用动

选中你刚添加的socks

![选中socks](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBA2oxHx_n13QiatFp92aTNmbNxb87AAIvDGsbmjyJRYcb_9vjKFncAQADAgADeAADPAQ.png)

点击右边的铅笔图标，就能看到前置代理

![前置代理](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBBGoxH0WYYB2SG8pqlUgzW8sWQPTYAAIwDGsbmjyJRWwxZc8x8SDpAQADAgADeAADPAQ.png)

建议先测速你的机场节点，选一个合适的

点击选择配置

![选择配置](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBBWoxH4WBlaWaeWBiFnODYFkgrKuPAAIxDGsbmjyJRbg8NrVBQHM0AQADAgADeAADPAQ.png)

就能看到你在v2rayn里所有的订阅

选择一个延迟速度都合适的，比如我选择香港节点。选中后点击确定，就操作成功了

![操作成功](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBBmoxIAWutNuFqWnL9TI0WfLM0cUMAAIyDGsbmjyJRXXzJHEhxOZqAQADAgADeQADPAQ.png)

由于是到us，再加上要香港节点中转，所以延迟在所难免的上升了

### 2.2.2 nekobox

安卓常用工具，注意此工具不支持xhttp，因为是singbox核心

先点击配置，前提是你已经添加好了机场订阅

![点击配置](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBB2oxIVsyZYx9uQViOoowOOhV3gAB_wACMwxrG5o8iUXQiFuw60NsYwEAAwIAA3kAAzwE.png)

点击右上角加号

手动输入，注意，先不要选链式代理，因为此时还没添加静态IP

点击socks/http

输入信息，IP，端口，用户名，密码保存

然后再点击添加链式代理

注意，第一个要选择你的出海IP，第二个选择静态IP。保存

然后就没了

## 2.3 miyaIP直接导入

miya目前依旧支持通过miya的服务器进行中转

已购IP处会显示主机（也就是IP那一栏要填的）：端口：账号：密码

进入手机的VPN设置，添加新的VPN，输入后保存即可使用，门槛极低

就不过多演示

## 2.4 指纹浏览器

连接：https://nexbrowser.net/download/

适合那些好多个IP，想相互隔离，电商矩阵号之类的人群，自己用也没问题

![指纹浏览器](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBCmoxJdEvzIp-wB9uwASVMoDf7F_uAAI0DGsbmjyJReiQrwaPyHudAQADAgADdwADPAQ.png)

创建窗口选择各项参数，添加代理即可，我用的少，就不深入介绍了

自己个人使用基本不需要付费，但是团队使用大概是要付费的

# 3. 结尾

至此，四个静态住宅IP提供商，四种使用方法都已经介绍完毕，怎么选择就看各位的需求了。至于iOS和macos...优点懒，先不写了

sms接码 https://user.nexsms.net/#/auth/sign-up?ref=BlneN8sK

还是建议自己申请号码来接码，但是留作备用
