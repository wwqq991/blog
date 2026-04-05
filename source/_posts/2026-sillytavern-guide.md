---
title: 6250字SillyTavern 超详细部署教程：Windows + 安卓完整安装指南，新手也能看懂
date: 2026-04-01 19:02:00
categories:
  - AI工具
  - 教程
tags:
  - SillyTavern
  - 教程
  - Windows
  - 安卓
  - AI
---

这篇文章同步整理自我发布在 B 站的专栏版本：
[6250字SillyTavern 超详细部署教程：Windows + 安卓完整安装指南，新手也能看懂](https://www.bilibili.com/opus/1186282607302672408?spm_id_from=333.1387.0.0)

这次同步的是尽量完整的图文版，保留了原文的主要结构、步骤和截图，方便直接在博客里阅读。

## 0. 前言

关于 SillyTavern，也就是所谓的“酒馆”，我大概是 25 年年末接触的。站内的视频不少，但是专栏不多。比起视频教程，我更喜欢图文教程，于是决定写个简单的教程，顺便总结我遇到的各种问题，尽量写得全面一点。

比较常见的问题有：

- SillyTavern 是什么
- Windows 怎么安装
- 手机能不能用
- 怎么开始聊天

主要参考内容：

- <https://github.com/SillyTavern/SillyTavern>
- <https://docs.sillytavern.app/installation/>
- <https://docs.sillytavern.app/installation/windows/>
- <https://docs.sillytavern.app/installation/android-%28termux%29/>
- <https://docs.sillytavern.app/installation/updating/>

这篇文章主要包括：

- Windows 和安卓的安装
- 云酒馆的部署
- API 的配置和使用
- SillyTavern 中各种内容的简单介绍和导入
- 云服务器平台和 API 平台推荐

## 1. SillyTavern 是什么

SillyTavern 本身并不是什么大模型，它只是一个前端页面。你可以把它理解成一个交互界面，真正负责思考和回复的是你连接的模型后端，SillyTavern 只是把这些能力组织起来的一个平台。

它的配置要求其实很低，只要能运行 Node.js 20 及以上版本就可以。Windows 这边只要是 64 位的 Windows 10/11 基本都能跑，安卓这边大致是 `arm64 + 2G 运存 + 安卓 8+` 就够用了。

## 2. Windows 安装

### 2.1 安装 Node.js 和 Git

先打开 Node 官网：
<https://nodejs.org/zh-cn>

![Node 官网入口](/images/sillytavern-guide/img-01.png)

点击获取，然后选择 Windows 安装程序。

![Node 下载页](/images/sillytavern-guide/img-02.png)

下载好后基本一路 `Next` 就行。安装完成后，打开 `cmd`，执行：

```powershell
node -v
```

如果能看到类似 `v22.x.x` 这样的输出，就说明安装成功了。

如果提示“不是内部或外部命令”，通常是下面两种情况：

- Node.js 没装好
- 环境变量还没生效

最简单的办法就是：

1. 关闭当前命令窗口
2. 重新打开一个新的 `cmd`
3. 再执行一次 `node -v`

如果还是不行，就卸载后重新安装。

接着安装 Git。

Git for Windows 官网：
<https://gitforwindows.org/>

安装方法也很简单：

1. 下载安装包
2. 双击运行
3. 基本一路点 `Next`
4. 安装完成

安装后在命令提示符里执行：

```powershell
git --version
```

如果能正常显示 Git 版本号，就说明装好了。

## 3. 安装 SillyTavern

### 3.1 先找一个合适的安装目录

不建议安装到这些位置：

- `C:\Program Files`
- `C:\Windows`
- 系统保护目录
- 权限很复杂的目录

官方文档也明确提醒过，不要装在系统受限目录里。不然很容易出现：

- 权限错误
- 启动失败
- 更新失败
- 依赖安装失败

推荐做法是自己手动建一个简单目录，比如：

```text
C:\AI
```

或者：

```text
D:\AI
```

然后把 SillyTavern 放进去，比如：

```text
D:\AI\SillyTavern
```

### 3.2 正式安装

进入你准备好的文件夹，在地址栏输入 `cmd`。

![在文件夹地址栏输入 cmd](/images/sillytavern-guide/img-03.png)

按回车后会打开一个黑色的命令提示符窗口。然后执行下面这条命令，下载稳定版：

```powershell
git clone https://github.com/SillyTavern/SillyTavern -b release
```

新手就别折腾测试版了，稳定版够用了。

下载完成后，目录里会多出一个 `SillyTavern` 文件夹。打开它，找到：

```text
Start.bat
```

有些系统会隐藏扩展名，你看到的可能只是：

```text
Start
```

其实是同一个东西。双击它就能启动。

### 启动之后

一般第一次启动时，默认浏览器会自动打开 SillyTavern 页面。如果没自动打开也别急，先看命令行窗口里有没有网址。

![命令行里的访问地址](/images/sillytavern-guide/img-04.png)

通常默认是 `8000` 端口，复制到浏览器访问即可。只要这里没报错，基本就是正常的。

以后再次启动时，直接再运行一次 `Start.bat` 就行。你也可以给它放一个快捷方式到桌面上。

### 怎么开始聊天

前面也说了，SillyTavern 只是前端页面。想真正开始聊天，还得配置一个可用的 URL 和 API，也就是接入一个模型服务。所有回复都是模型来完成的，下面继续说。

## 4. 配置模型

### 4.1 硅基流动

链接：
<https://cloud.siliconflow.cn/i/3IdL5FPU>

优点：

- 国内模型比较全
- 新人实名认证还有额度
- 相对官方渠道更便宜一些

缺点：

- 基本还是以国内模型为主

### 4.2 社区公益站

有些社区会提供公益 API 站点，达到条件后就能使用。

优点：

- 免费
- 对很多轻度用户来说够用

缺点：

- 稳定性一般
- 需要加入各种社区
- 随时可能停掉

### 4.3 英伟达 NIM 平台

链接：
<https://developer.nvidia.cn/nim>

这是英伟达提供给开发者的平台，简单操作之后就能免费使用不少模型。

优点：

- 免费
- 限速相对宽松

缺点：

- 主要是开源模型
- 没有大家熟悉的 GPT、Gemini、Claude 这类闭源模型

补充一下：

- `+86` 手机号注册时有时不太稳定
- API Key 只会出现一次，记得及时保存
- NIM 的 URL 是 `https://integrate.api.nvidia.com/v1`

### 4.4 中转平台

不推荐任何中转平台，尤其是那种批量搭出来的 `newapi` 站。看起来便宜，实际倍率往往很高，很多都不太靠谱。

### 4.5 购物平台购买

也不是很推荐。良心卖家不多，踩坑概率不低，这部分就不做具体推荐了。

### 4.6 具体配置方式

拿到 API Key 之后，注意不要把你的 API 发给任何人。它本质上就是调用你账号额度的钥匙。

操作时可以按照下面这张图来：

![配置 API 的总入口](/images/sillytavern-guide/img-05.png)

具体流程：

- 先点上方的插头图标
- 聊天补全来源选择“自定义（兼容 OpenAI）”
- 自定义端点填你选用的平台地址
- API 密钥点右侧钥匙图标添加

比如：

- NIM：`https://integrate.api.nvidia.com/v1`
- 硅基流动：`https://api.siliconflow.cn/v1`

添加 API Key 时的界面大概是这样：

![添加 API 密钥](/images/sillytavern-guide/img-06.png)

第一行输入 API，第二行输入名称，名称自定义就行。完成后点击连接，如果输出 `Valid`，就说明连接成功。

![Valid 代表连接成功](/images/sillytavern-guide/img-07.png)

然后你就可以在可用模型的下拉菜单里选择具体模型了。到这里，API 部分的配置基本就结束了，理论上已经可以开始对话。

## 5. 预设

想和 AI 畅所欲言，通常还需要一个合适的预设，这样模型不容易因为默认安全策略而频繁拒答。不同模型适合的预设也不完全一样，这部分我就不展开了。

## 6. 世界书

世界书可以理解成一本词典。AI 会在不同场景下调用不同条目。和把设定直接塞进高级定义或角色描述相比，世界书更省 token，也更不容易让 AI 忘记设定。

## 7. 角色卡

角色卡通常是一个分享文件，常见格式是 `.png` 或 `.json`。导入方法大致是：

1. 点击右上角的角色管理
2. 再点右侧那个箭头
3. 导入角色卡

![角色卡导入入口](/images/sillytavern-guide/img-08.png)

社区里很多角色卡普遍不允许转载，所以这里不去搬别人的资源。我自己以前让 Claude 写过一个角色卡，放个下载链接：

<https://pan.baidu.com/s/1fNLIqbVZsJsmHtQ6B0CE2g?pwd=916v?>

做得比较粗糙，纯 AI 生成，仅作示例。

## 8. 插件

酒馆支持不少插件，有些插件甚至可以算是必装，因为很多角色卡都会依赖它们。这里简单列几个：

- 酒馆助手：<https://github.com/N0VI028/JS-Slash-Runner.git>
- 小白 X：<https://littlewhitebox.velure.top/RT15548/LittleWhiteBox>
- 提示词模板：<https://github.com/zonde306/ST-Prompt-Template/>
- 鸡尾酒：<https://github.com/Lianues/cocktail>

注：这里给出的部分链接可能需要特殊网络环境，自行处理。

## 9. 安卓部署

写着写着差点把安卓部署忘了，这部分就补一个尽量实用的版本。

首先要知道，SillyTavern 本身并没有什么现成的官方安卓安装包。你在外面能搜到的大多数，基本都是别人打包的。这里还是以官方部署方式为主。

如果你想看第三方打包版，也有人做过：
<https://github.com/funnycups/Luker/releases/tag/v1.32.1>

### 9.1 安装前先知道一件事

不要从 Google Play 商店安装 Termux。

官方建议是：

- Play 商店版 Termux 已经不再维护
- 应该从 F-Droid 或 GitHub Releases 获取最新版

下载地址：

- F-Droid：<https://f-droid.org/>
- Termux GitHub Releases：<https://github.com/termux/termux-app/releases>

### 9.2 第一步：安装 Termux

操作顺序：

1. 打开 F-Droid 或 GitHub Releases
2. 下载 Termux 的 APK
3. 安装 APK
4. 打开 Termux

第一次打开时会看到一个黑色终端界面，这不是报错，它本来就长这样。

### 9.3 第二步：切换软件源

在 Termux 里执行：

```bash
termux-change-repo
```

然后：

1. 选择 `Mirror group`
2. 选择离你比较近的镜像源
3. 确认

这样后面安装依赖会更顺利、更快。

### 9.4 第三步：更新 Termux 环境

继续执行：

```bash
pkg update && pkg upgrade
```

第一次执行时间可能会比较久。如果中途提示确认，一般输入：

```text
y
```

### 9.5 第四步：安装必备依赖

继续执行：

```bash
pkg install git nodejs-lts nano
```

这里会安装三个东西：

- `git`
- `nodejs-lts`
- `nano`

### 9.6 第五步：下载 SillyTavern

推荐新手直接装稳定版：

```bash
git clone https://github.com/SillyTavern/SillyTavern -b release
```

如果你想尝试测试版，再执行：

```bash
git clone https://github.com/SillyTavern/SillyTavern -b staging
```

下载完成后，SillyTavern 默认会放在：

```text
~/SillyTavern
```

### 9.7 第六步：启动 SillyTavern

执行：

```bash
cd ~/SillyTavern
bash start.sh
```

第一次启动时会自动安装依赖，所以可能会有点慢。跑完之前不要急着关闭 Termux，因为安卓端的服务就是在这个终端里跑着的。

### 9.8 第七步：在手机上打开页面

启动成功后，在手机浏览器里访问它给出的地址。

一般可以先试：

```text
http://127.0.0.1:8000
```

或者：

```text
http://localhost:8000
```

但最稳的方式还是：

- 以 Termux 启动后终端里显示的实际地址和端口为准

### 9.9 安卓端以后怎么启动

后面每次使用都不用重新安装，只要：

1. 打开 Termux
2. 执行

```bash
cd ~/SillyTavern
bash start.sh
```

3. 再去浏览器里打开对应地址

就可以继续用了。

## 10. 各种问题总结

### 10.1 手机端有些离谱的世界书选择

电脑端的世界书选择很直观，但手机上会有点反人类。一般选中后会变成不同颜色，没有明显的“保存”按钮，选中了基本就等于启用了。

### 10.2 关于杀后台

我记得是有一条命令可以解决，但我自己现在不记得了，需要的话还是建议去官方文档或者社区里再找一下。也有人做过相关脚本，可以自己再探索。

## 11. 雨云云酒馆部署

### 11.1 服务器购买

注册链接：
<https://www.rainyun.com/BZTX_>

不想用邀请码的话，把后面的 `BZTX_` 删掉也行。

![雨云购买页](/images/sillytavern-guide/img-09.png)

进入之后点“云应用”，第一个基本就是 SillyTavern。

![雨云云应用页面](/images/sillytavern-guide/img-10.png)

默认配置大体已经够最低标准了，如果担心不够，再额外加一点。

![雨云配置示意](/images/sillytavern-guide/img-11.png)

文里提到的最低标准大概是 21 雨滴，具体还是按你自己的预算和需求来。

## 12. 说明

### 12.1 硅基流动邀请码

如果这篇教程对你有帮助，并且你决定使用硅基流动，可以走这个链接：

- 链接：<https://cloud.siliconflow.cn/i/3IdL5FPU>
- 邀请码：`3IdL5FPU`

虽然你不用邀请码我也不能怎样。

有问题可以问，但私信我不一定看，只能随缘回复，尽量还是评论区交流解决。

这篇文章主要是拿来分享经验，里面给出的方案不一定是最优解，如果你有更适合自己的方案，也完全可以按自己的方式来。
