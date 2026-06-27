---
title: 关于v2rayn和karing分流的图文教程（日常使用版）
date: 2026-06-27 07:00:00
updated: 2026-06-27 07:00:00
password: xczs66
categories:
  - 教程
  - 网络
tags:
  - v2rayN
  - karing
  - 分流
  - VPN
  - 代理
---

# 0. 前言

在 X 上看到了很多「VPN 一开，其他软件就断网」之类的言论，虽然大部分都是骗流量的，但是为了避免有些人真不会配置分流，所以决定以 v2rayN 和 karing 为例，结合自己日常使用（指 24 小时开着）的经验，写一个适合日常使用的分流教程。

# 1. 为什么要分流

所谓分流，就是按照一定的分流规则，把不同的流量引导到不同的出口。比如刷抖音就直连，上 X 就连自建的干净节点，用币安之类的用日本节点，这样既能实现墙内墙外同时使用互不影响，又能实现不同的软件使用不同的节点。

这样就可以优化体验，不至于在开启 VPN 的时候其他软件断网。也可以节省梯子的流量并且降低发热，一定程度上避免了手机变成暖手宝。

# 2. 软件

软件主要就介绍 v2rayN 和 karing。

## 2.1 v2rayN

### 2.1.1 简介与推荐（其实就是废话）

开源地址：

<https://github.com/2dust/v2rayN>

页面像上世纪的古董，但是确实很好用。我就默认各位都有自己的机场或者已经自建了节点，此处不多赘述，没有的详见：

vps 自建节点的教程（基础版）：
<https://blog.xcfake150.asia/2026/06/02/2026-vps-self-hosted-vpn-guide/>

关于 IP 与链式代理：
<https://blog.xcfake150.asia/2026/06/16/2026-ip-chained-proxy/>

机场推荐：
<https://xn--9kqz23b19z.com/#/register?code=JqeGhNxH>

也可以用你自己喜欢的，就不赘述了，正式开始。

### 2.1.2 正式开始配置

首先打开你的 v2rayN，导入订阅后一般是如下页面：

![v2rayN主页面](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBFmo_zgTfzMA3kqHSKozly1cNdv7OAAK2DGsbExz4RSua88W0naz_AQADAgADeQADPAQ.png)

点击上方的**设置 - 路由设置**：

![设置-路由设置](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBF2o_zjRRAuLLZX6NNMTTLBHVjGOrAAK3DGsbExz4RaANS7dqkx-UAQADAgADeAADPAQ.png)

打开之后一般就长这样，最常用的就是绕过大陆这个规则：

![绕过大陆规则](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBGGo_zkugrlNQk0IBlwUTvhwXaRl4AAK4DGsbExz4RU6zLfaH17PoAQADAgADeQADPAQ.png)

点击进入绕过大陆规则，可以看到我已经加入了很多的规则：

![规则列表](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBGWo_zo1LKkHoH7boaPhCr95kI8TTAAK5DGsbExz4RZwYCKuPku2UAQADAgADeQADPAQ.png)

点击上方的**添加规则**：

![添加规则](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBGmo_zr7zh1otEdxzrCpmP2gshmPUAAK6DGsbExz4RaW2SmaoWxKhAQADAgADeAADPAQ.png)

比如我想让 Discord 和 PikPak 走香港的出口，就可以在 domain 处输入 `https://discord.com/`，或者在进程处输入 `PikPak.exe`、`Discord.exe`：

![输入规则](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBG2o_zyjKlIGQvQyLQielOwd24q_3AAK7DGsbExz4RfR_LNkE9gABMgEAAwIAA3kAAzwE.png)

输入好之后，点击**选择配置**：

![选择配置](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBHGo_z926cbQ-nkhm_WOS8gRwYrkgAAK8DGsbExz4RfK1jowJ5nOpAQADAgADeAADPAQ.png)

选择你想让 PikPak 走什么节点，比如我选的是香港。选好之后点击**确定 - 确定 - 关闭页面**，会提示操作成功。这时候我们去检测 IP 地址还是在美国（就是你常用的节点），但是访问 Discord 和 PikPak 的时候就会自动路由到你选择的香港节点。

### 2.1.3 为什么不直接导入规则集

因为是根据我个人使用经验来的，规则集固然好用，但是可视化的操作对新手已经足够友好了。而且我也一直是自己配置。

但是不是说规则集不好用，只是我不爱用而已。

## 2.2 karing

### 2.2.1 简介与废话

据我所知，karing 是全平台都有的，而且界面都差不多，所以更有泛用性。属于是学会了一次，所有设备都能用，不用因为换了设备就重新学。

开源地址：
<https://github.com/KaringX/karing>

AppStore 地址：
<https://apps.apple.com/us/app/karing/id6472431552>

### 2.2.2 正式开始

#### 2.2.2.1 分流配置

打开之后一般是这个页面，也可能略有不同：

![karing主页面](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBHWo_0emNBmjFo4ig0_SnY_wNUiV0AAK_DGsbExz4RWisuFFZC6csAQADAgADeAADPAQ.png)

可以点击左上角的铅笔图标来进行删减。手机端会额外有一个分应用代理的选项，最后会介绍，先介绍分流。

点击**分流规则**：

![分流规则](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBHmo_0oIr68T6XYc_KVl2o3jlKGjEAALADGsbExz4RWn-IlWwoVtJAQADAgADeAADPAQ.png)

就可以看到现在的分流规则了，我已经根据使用习惯配置了一部分。

注意：使用分流规则要在导入时禁用机场的分流，karing 默认是禁用机场规则的，没禁用的话手动禁用一下。

点击右上角的铅笔图标，再点击右上角的三个点：

![三个点菜单](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBH2o_0vyK5rLq4XW36P0_GWLn9YExAALCDGsbExz4RYpR1p7_F1sSAQADAgADeAADPAQ.png)

可以看到两个添加。先讲第二个，点击有三条横线的添加，这是软件内置的分流组：

![内置分流组](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBIGo_01Uqd5k_AAHSNCEDmFMdN9FIGAACxAxrGxMc-EVyFeqNlsG-RQEAAwIAA3gAAzwE.png)

比如我们可以打开广告拦截这一项，选好了点击右上角的确定即可。

不过这篇主要还是讲自定义的规则，所以再点击三个点，点击第一个添加，随便起个什么名字，比如 1：

![新建规则](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBIWo_07zWVrEUijp3gITvKLYbCjdOAALFDGsbExz4RZI_r7vulRA5AQADAgADeAADPAQ.png)

点击向右的箭头，就会来到这个页面：

![规则详情](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBImo_0-No8_sF7NtbGv9FuMyBXP1OAALGDGsbExz4RaAGbrP4YC0DAQADAgADeAADPAQ.png)

可以根据进程名称、进程路径、进程目录、域名、域名后缀、域名关键词来配置分流。还是用 PikPak 路由到香港为例：

![PikPak分流](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBI2o_1FDN4SvamR1r5FNOA53n7AprAALIDGsbExz4RZhdFKBqdNeBAQADAgADeAADPAQ.png)

点击进程路径的右侧箭头，就会弹出文件资源管理器，找到 PikPak 的路径，比如我的是 `E:\PikPak\PikPak.exe`：

![选择路径](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBJGo_1J3dnPJ83ZcdSoZhUoHSdflwAALJDGsbExz4RYHgIVSdOS-WAQADAgADeAADPAQ.png)

点击右上角的对号保存，这样一个分流就配置好了。

注意：karing 的分流是自上而下读取的，也就是先匹配上面的规则，后匹配下面的规则。

#### 2.2.2.2 自定义自动选择

有些兄弟可能已经注意到了，我的节点是自动选择【us 自动】而不是直接的自动选择。

我手上有大概十来台乱七八糟的 VPS，其中 4 台上了面板接入了落地 IP，也就是说至少有 4 个节点是同一个出站 IP，但是每个 VPS 的速度稳定性都不同，可以让 karing 自己选择延迟最低的节点进行连接（毕竟出站是一样的）。

扯远了，总之就是可以配置一个自定义自动选择。点击左上角的齿轮：

![设置](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBJWo_1g7Gl1x5BVgu4KUbfEfpxrVoAALLDGsbExz4Rdon1y1hLTJtAQADAgADeAADPAQ.png)

下滑找到分流：

![分流设置](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBJmo_1jHWCbtLAAF8FCC3MEHIlnuBgAACzAxrGxMc-EUOJh9ohHjl9QEAAwIAA3gAAzwE.png)

点进去选择**自定义自动选择**，然后就可以新建一个自动选择了：

![新建自动选择](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAIBJ2o_1lEDA6J3ps33LtdQ4WWwBKg7AALNDGsbExz4ReJSyULg9A87AQADAgADeAADPAQ.png)

起个名字比如就叫 us 自动，点击右侧箭头会进入节点选择页面，选择你需要的节点。这样在使用 us 自动的时候，karing 就只会在你选中的节点里选择最优的。

#### 2.2.2.3 分应用代理

手机 app 上会有一个额外的选项叫做**分应用代理**。点一下就会显示你手机上的所有软件，有些软件不需要代理，比如抖音，那就可以不勾选；有些需要代理，比如 TG、X 这种，那就勾选。被勾选的软件就会按照你设定的规则进行分流。

# 3. 相关链接

vps 自建 VPN：
<https://blog.xcfake150.asia/2026/06/02/2026-vps-self-hosted-vpn-guide/>

VPN 推荐：
<https://xn--9kqz23b19z.com/#/register?code=JqeGhNxH>

超低价 vps：
<https://56idc.net/aff.php?aff=288>

自用普通线路 vps：
<https://cloud.colocrossing.com/aff.php?aff=1635>

落地 IP 与链式代理：
<https://blog.xcfake150.asia/2026/06/16/2026-ip-chained-proxy/>

tg 群链接：
<https://t.me/+bSGdo4DJsG85Njcx>

## 如果看完也不会

看完可以联系我帮忙，不过不都是免费的

链接：[https://t.me/listkiro](https://t.me/listkiro)

大可以放心来加，简单问题会免费帮忙的

如果发了消息没回复，就来群里问，看见会回复的

[https://t.me/+_S_CXJ3A5fs3MGNh](https://t.me/+_S_CXJ3A5fs3MGNh)

另外，如果觉得本篇有用，下面有打赏链接，博客会长期更新，可以时不时来看看