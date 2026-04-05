---
title: 2025年入坑MC详细指南（从下载游戏到云服务器搭建）
date: 2025-02-17 22:34:00
categories:
  - 游戏
  - 我的世界
tags:
  - Minecraft
  - MC
  - 教程
  - 服务器
  - 云服务器
---

这篇文章同步整理自我发布在 B 站的专栏版本：

[2025年入坑MC详细指南（从下载游戏到云服务器搭建）](https://www.bilibili.com/opus/1034934582634348599?spm_id_from=333.1387.0.0)

这次同步的是尽量完整的图文版，保留原文主要结构、步骤和示意截图，方便直接在博客里阅读。

## 1. 购买正版账号

在微软商店（Microsoft Store）搜索“我的世界”购买即可，注意别买错版本。

![购买正版账号](/images/minecraft-guide/img-01.png)

## 2. 启动器

虽然官方有启动器，但很多玩家还是更习惯第三方启动器。常见的是 PCL 和 HMCL，功能差别不大，按个人习惯选就行。

- PCL 下载 1：<https://download.hexdragon.top>
- PCL 下载 2：<https://bbsmc.net/software/pcl>
- PCL 下载 3：`https://ltcat.lanzouv.com/b0aj6gsid`（提取码：`pcl2`）
- HMCL 下载：<https://hmcl.huangyuhui.net>

根据启动器里的提示登录正版账号即可。如果只是单机体验，也可以离线登录，但进入服务器时会有区别。

![PCL 启动器](/images/minecraft-guide/img-02.png)

![HMCL 启动器](/images/minecraft-guide/img-03.png)

## 3. 开始游戏

在启动器里下载你想玩的版本，例如 `1.20.1`。

如果你不做额外选择，默认安装的是原版 Minecraft。想玩模组，就需要模组加载器，例如：

- Forge
- Fabric
- NeoForge

OptiFine 本质上也是一个功能很多的模组，但在高版本下表现和兼容性通常不理想。

![版本下载入口](/images/minecraft-guide/img-04.png)

![选择具体版本](/images/minecraft-guide/img-05.png)

![加载器选项](/images/minecraft-guide/img-06.png)

## 4. 添加模组或整合包

模组或整合包的运行，前提是你知道它依赖哪个加载器。

例如有些整合包运行在 Fabric 上，有些则运行在 Forge 上。

常见安装方式有两种：

### 4.1 在启动器内搜索并安装

很多启动器都可以直接搜索整合包，找到后直接下载安装。

### 4.2 在资源网站下载后导入

一般来说，下载好的整合包拖进启动器窗口，启动器就会自动识别并安装。

![整合包依赖加载器示意](/images/minecraft-guide/img-07.png)

![启动器内搜索整合包](/images/minecraft-guide/img-08.png)

## 5. 如何寻找资源

### 5.1 寻找模组和整合包

常用入口：

- MC百科：<https://mcmod.cn>

很多模组页面会提供相关下载链接，常见来源包括：

- CurseForge
- Modrinth

### 5.2 寻找光影

可以去这里找：

- <https://modrinth.com/shaders>

![MC 百科资源页示意](/images/minecraft-guide/img-09.png)

## 6. 光影怎么使用

根据 Forge 和 Fabric 两个生态，方案不同。

### 6.1 Forge 端

由于 Rubidium 已停止更新，更推荐：

- Embeddium
- Oculus

两者版本必须匹配。

![Embeddium](/images/minecraft-guide/img-10.png)

![Oculus](/images/minecraft-guide/img-11.png)

### 6.2 Fabric 端

更常见的是：

- Sodium
- Iris Shaders

安装完成后，进入游戏，在视频设置里选择光影包即可。前提是你已经把光影包放进对应文件夹。

![Sodium](/images/minecraft-guide/img-12.png)

![Iris Shaders](/images/minecraft-guide/img-13.png)

## 7. 优化

如果你不打算直接玩完整整合包，而是自己拼模组，那么随着模组数量增加，帧率下降是很常见的。这个时候就需要一些优化模组。

下面是我常用的一些：

### 7.1 OptiFine

部分老版本（例如 `1.12.2` 以前）还算好用，但高版本兼容性和表现通常都不理想。

![OptiFine](/images/minecraft-guide/img-14.png)

### 7.2 Sodium（Fabric）/ Embeddium（Forge）

最直观的作用就是提高帧率和稳定性。

![Sodium](/images/minecraft-guide/img-15.png)

![Embeddium](/images/minecraft-guide/img-16.png)

### 7.3 Tweakeroo（Fabric）/ Tweakerge（Forge）

能更好地控制和优化你的游戏体验。

![Tweakeroo](/images/minecraft-guide/img-17.png)

![Tweakerge](/images/minecraft-guide/img-18.png)

### 7.4 Mod Menu

更方便地查看你当前安装了哪些模组。

![Mod Menu](/images/minecraft-guide/img-19.png)

### 7.5 Clumps

把多个经验球合并成一个，减轻卡顿。

![Clumps](/images/minecraft-guide/img-20.png)

### 7.6 FerriteCore

降低内存占用。

![FerriteCore](/images/minecraft-guide/img-21.png)

### 7.7 FPS Reducer

游戏在后台时自动降低帧率，减少 CPU 和 GPU 占用。

![FPS Reducer](/images/minecraft-guide/img-22.png)

### 7.8 ModernFix

提高整合包启动速度，降低占用。

![ModernFix](/images/minecraft-guide/img-23.png)

### 7.9 Starlight / ScalableLux

优化光照引擎，提高帧率。`1.20` 以后更推荐 `ScalableLux`。

![Starlight](/images/minecraft-guide/img-24.png)

![ScalableLux](/images/minecraft-guide/img-25.png)

### 7.10 Entity Culling

不渲染不可见的实体和方块，提高性能。

![Entity Culling](/images/minecraft-guide/img-26.png)

### 7.11 Carpet（Fabric）/ Curtain（Forge）

帮助你更深入地理解和控制游戏机制。

![Carpet](/images/minecraft-guide/img-27.png)

![Curtain](/images/minecraft-guide/img-28.png)

### 7.12 Thorium

修复部分问题或增强特性。

![Thorium](/images/minecraft-guide/img-29.png)

到这一步，你基本已经能在单人里自由游玩了。

## 8. 联机和服务器

如果只玩单人，内容再多也容易腻，所以接下来就是联机。

### 8.1 内网穿透联机

可选工具很多，这里我提一下樱花内网穿透：

- <https://www.natfrp.com/>

基本流程：

1. 注册并实名认证
2. 下载对应系统的软件
3. 在首页复制访问密钥
4. 把访问密钥填进软件
5. 在游戏中打开局域网世界，记下端口
6. 在樱花里新建 TCP 隧道，把本地端口填成那个局域网端口
7. 开启隧道后，日志里会给出联机地址

注意：开局域网世界的人必须在线，否则其他玩家无法进入。

![樱花内网穿透密钥](/images/minecraft-guide/img-30.png)

![新建隧道入口](/images/minecraft-guide/img-31.png)

![选择节点](/images/minecraft-guide/img-32.png)

![填写 TCP 隧道](/images/minecraft-guide/img-33.png)

![开启隧道](/images/minecraft-guide/img-34.png)

![日志中的联机地址](/images/minecraft-guide/img-35.png)

## 9. 开设服务器

如果人多，或者主机不能一直在线，那就更适合开服务器。

### 9.1 硬件要求（本地电脑）

- CPU：2GHz 以上多核 / 2.5GHz 以上单核，推荐 3.2GHz 以上多核
- 内存：4G 及以上，推荐 8G 以上
- 系统：Windows 7 64 位及以上
- 显卡：1G 以上显存独显，推荐 4G 以上
- 硬盘：至少 200M，推荐 500M 以上剩余空间
- 网络：上下行 10 Mbps 以上

### 9.2 必备软件

- 正常的解压软件
- 浏览器
- 文本编辑器
- Java 环境

Java 下载：

- <https://www.java.com/zh-CN/download/>

### 9.3 服务器核心选择

按玩法可以分成几类：

#### 9.3.1 纯净服

Mojang 官方服务端，不支持插件和模组，但支持数据包。

- <https://www.minecraft.net/>

#### 9.3.2 插件服

只支持插件（Plugin），常见核心：

- Bukkit：<https://getbukkit.org/>
- Spigot：<https://www.spigotmc.org/>
- Paper：<https://papermc.io/downloads>

#### 9.3.3 MOD 服

只支持 MOD，根据加载器不同，一般是：

- Forge：<https://files.minecraftforge.net/net/minecraftforge/forge/>
- Fabric：<https://fabricmc.net/use/>

#### 9.3.4 插件 + MOD 混合服

理论上可以同时使用插件和模组，但兼容性和性能更复杂，不建议新手直接上来就用。

#### 9.3.5 其他参考

- 核心下载参考：<https://www.fastmirror.net/#/download/Paper?coreVersion=1.21.1>
- 各类核心区别参考：<https://guidemc.github.io/Server/Core.html>

## 10. 启动服务器

这里以 `Paper 1.20.1` 为例。

1. 新建一个文件夹
2. 把服务端核心放进去
3. 写一个启动脚本，例如：

```bat
java -Xmx16G -Xms16G -jar Paper-1.20.1-build196.jar nogui
```

如果不想手写，也可以用 Paper 官方的启动脚本生成器：

- <https://docs.papermc.io/misc/tools/start-script-gen>

第一次运行时，服务端会自动生成一些文件。

![Paper 服务端与启动脚本](/images/minecraft-guide/img-36.png)

## 11. 云服务器

如果不打算自己组物理机，那么云服务器会是更省事的方案。

我文中提到的是雨云：

- <https://app.rainyun.com/dashboard>

我的看法是：

- 整体比较可靠
- 比较适合新手试用
- 推荐 VPS
- 后面就算不玩 MC，也还能拿去做别的事

如果你用我的优惠码注册，可以获得首月优惠券：

- 邀请码：`BZTX`

## 12. 配置选择

纯净服要求不高，但版本越高、模组越多，配置要求也越高。

像大型整合包，内存最好直接按 `16G` 起步考虑。我自己的 `Paper 1.20.1` 轻插件服，平时内存占用大概在 `7G - 8G`。

雨云的配置是可以动态调整的，这一点比较方便。小白腐竹如果怕折腾，系统建议优先选 Windows，会更容易上手。

![配置选择参考](/images/minecraft-guide/img-37.png)

## 13. 开服（终于）

如果核心和启动脚本都准备好了，双击 `start.bat`。

第一次运行后会生成 `eula.txt`，把里面这行：

```text
eula=false
```

改成：

```text
eula=true
```

保存后再次运行启动脚本，如果控制台最后显示正常启动信息，就说明已经成功开服。

![第一次启动后生成的文件](/images/minecraft-guide/img-38.png)

![修改 eula](/images/minecraft-guide/img-39.png)

![开服成功示意](/images/minecraft-guide/img-40.png)

如果你使用的是云服务器，还需要继续配置远程连接、防火墙和公网访问。

## 14. 设置端口映射

如果你使用云服务器，还需要配置公网访问。

以我文中提到的雨云为例，大致流程是：

1. 在后台找到 NTA 端口映射
2. 新建规则
3. 协议选 `TCP+UDP`
4. 内网端口填 `25565`
5. 创建后会得到一个映射公网地址

然后再去服务端目录里打开 `server.properties`，找到：

```text
server-port=
```

把它改成映射后的端口即可。

## 15. 插件安装

既然都用插件服了，插件当然不能少。

Paper 下载页里本身就有插件入口，此外也有很多第三方插件站。安装方式一般很简单：

- 把插件丢进 `plugins` 文件夹
- 重启服务器

有些插件会有前置依赖，记得一起装。

## 16. 我遇到过的一些问题

### 16.1 存档迁移

如果不想从头开始玩：

- 把原存档改名为 `world`
- 连同 `config` 文件夹一起上传到服务器目录
- 覆盖原文件

### 16.2 生电玩家为什么很多特性用不了

Paper 修复了很多原版特性，所以部分生电玩法默认会受影响。

可以去改 Paper 配置文件：

- `/config/paper-global.yml`

参考：

- <https://wiki.pha.pub/books/109/page/minecraft-paper>

### 16.3 刷沙机默认不能用

这类玩法通常需要额外插件支持。

参考插件：

- <https://github.com/Nats-ji/paper-sand-dupe-unpatched/blob/master/README_zh.md>

如果下载很慢，原文里我也留了网盘方案，这里就不重复展开了。

![Paper 配置相关示意](/images/minecraft-guide/img-41.png)

## 结尾

这篇文章先写到这里。

如果你只是想顺利入坑 Minecraft，那么你看到这里，已经足够从：

- 买正版
- 选启动器
- 装模组和光影
- 做优化
- 联机
- 到自己开服

完整走一遍了。

后面如果我继续补服务器问题、插件推荐或者常见踩坑，我也会把博客版一起更新。
