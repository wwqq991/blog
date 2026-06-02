---
title: 关于VPS自建VPN的教程
date: 2026-06-02 20:30:00
categories:
  - 折腾
  - 网络
tags:
  - VPS
  - VPN
  - 3x-ui
  - Reality
  - vpngate
---

# 0. 前言

首先就是得有一台 vps，这是一切的开始。还有一个域名托管到 cloudflare。

# 1. 选购 vps

就不在这具体推荐 vps 购买平台了，不过目前的行情是美西机房（如 la），非 cn2 线路，大概 10 到 20 美元一年。

一般来说如果只是搭建 VPN 的话，1 核 1g 甚至 0.5g 都可以，前提是流量够多。不过 vps 商家流量都给的很慷慨（我这个足足 20t，根本用不完）。

# 2. 面板简介

GitHub 上也有不少的节点脚本，不过都是纯命令行形式，对于老手来说当然不在话下，但是对于小白还是过于复杂了。

所以建议新手直接用面板，例如 s-ui 面板和 3x-ui 面板。类似的还有很多，但是我只用过这两个，所以暂时不提其他的。

s-ui 的作者最近删库跑路了，原因未知，GitHub 也有了基于 s-ui 的新项目，还没试过，暂且不提。

3x-ui：<https://github.com/MHSanaei/3x-ui>

3x-ui 是基于 xray 核心的，s-ui 是基于 sing-box 核心的（说实话我还是更喜欢 sing-box）。

# 3. 面板搭建（3x 为例）

先使用工具登录 vps（比如 finalshell：<https://www.hostbuf.com/>）。

先关闭防火墙：

```bash
sudo ufw disable
```

然后一键部署：

```bash
bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
```

中间的操作是，默认回车，y，设置一个端口（例如 8443），1，输入你在 cloudflare 上解析好的域名，端口默认 80 即可，n，y。

为什么不截图：因为我四个 vps 都部署完了，实在没 vps 来重新部署。

最后会输出一段类似这样的内容：

```
AgACAgEAAyEGAATgHtSGAAPCah7wBXySQP5YF1cRlJ7efHJNtyUAAigMaxsaKvlE2VYFFqLvNWoBAAMCAAN4AAM7BA
```

（里面的内容我删了一部分，实际上更长所以不要试图登陆我的后台了）

另外，目前 3x-ui 可以一个网页控制多个 vps，如果你有很多 vps 可以同步部署。

# 4. 添加节点

登录后点击添加入站。

![添加入站](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPDah7x2Ppn5PmXwX79DgvuB1cuhzwAAikMaxsaKvlEOFZDohnZ9CEBAAMCAAN4AAM7BA.png)

随便输入个备注，协议就暂时选 vless，其他不用改。

点击传输，我选了 xhttp，也可以选别的。

![传输设置](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPEah7yWICP7OPlITWZ7i1QLEMZzgQAAioMaxsaKvlEjpVdFqFHcPIBAAMCAAN4AAM7BA.png)

其他的暂时不用动。点击安全。

![安全设置](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPFah7yjNlA8HCh26lIRkiIGkHvaAYAAisMaxsaKvlEjys16Xh8flwBAAMCAAN4AAM7BA.png)

我选的 reality。

向下划，点一下获取新证书，seed 随便用不用都行。

![reality 证书](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPGah7y29XLlX42g3jW0A2HE5WZXd8AAiwMaxsaKvlEJrWxWrhkdCwBAAMCAAN4AAM7BA.png)

点击创建，就结束了，一个 vless＋xhttp＋reality 的节点就创建好了。

差点忘了，记得点击客户端，创建一个客户端，这样才能导入软件使用。

![创建客户端](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPLah7174BoVDstMBqnrlHc2RtutiAAAjMMaxsaKvlECkwp8Qb8JXsBAAMCAAN5AAM7BA.png)

# 5. 添加出站和路由

点击左侧 xray 配置，再点击上方的出站。

![出站配置](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPHah7zXRQ8uxRJafHJMD2mmsICvEoAAi0MaxsaKvlEntOu6jVHaNgBAAMCAAN5AAM7BA.png)

如果你已经部署了 vpngate，像我这样设置就好了。

![vpngate 出站](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPIah7zrE9_Ed7tQOnnYr-QWs_HjLEAAi8MaxsaKvlEGAeIo_AkLsQBAAMCAAN4AAM7BA.png)

记得保存并重启 xray。

点击路由规则，新建路由规则。入站选择你刚部署的节点，出站选择你刚才配置的出站（不配置出站的节点默认是 vps 的 IP 出站）。

![路由规则](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAPKah70Je5JVtPc2_37sD9LZPPLeQUAAjAMaxsaKvlEMkiG5ZpsmdQBAAMCAAN5AAM7BA.png)

# 6. vpngate 部署

开源地址：<https://github.com/baoweise-bot/aimili-vpngate>

部署命令：

```bash
bash <(curl -Ls https://raw.githubusercontent.com/baoweise-bot/aimili-vpngate/main/install.sh)
```

部署基本上不需要操作，等着就行，最后选 n 就行，进去面板再慢慢改。

部署结束之后会输出后台的网页，用户名和密码，登录进去，然后选 IP 就行了。

暂时这样吧。




