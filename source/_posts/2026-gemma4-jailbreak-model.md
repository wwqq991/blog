---
title: gemma4 越狱模型
date: 2026-05-10 15:49:31
updated: 2026-05-10 15:49:31
categories:
  - AI工具
  - 教程
tags:
  - Gemma
  - Ollama
  - 本地模型
  - Hugging Face
  - Git
---

# 1. 准备内容

## 1.1 ollama

简单来说就是一个让你能在本地运行 AI 模型的工具。

Windows 链接：<https://ollama.com/download/windows>

![Ollama 下载页面](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAM5agABMrFav-_ZY86nIokXXOm9kYjEAALfC2sbfdcJREQHdAUkLkaTAQADAgADeQADOwQ.png)

页面大概就是这样，点击下载或者用命令下载都行。

## 1.2 检测本地配置能运行什么模型

要用到一个网站，不算特别准确，但是也大差不差了：

<https://www.canirun.ai/?q=gemma>

会自动识别你的显卡和系统配置，然后给出检测结果。

![Can I Run AI 检测结果](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAM6agABNIw7CyfCsFCVjpkBIK4wYZhzAALgC2sbfdcJRAN4WYdyIrXRAQADAgADeQADOwQ.png)

我就直接用 e4b 了。

## 1.3 一个无审查模型

可以来这里找：<https://huggingface.co/collections/TrevorJS/gemma-4-uncensored>

根据你的电脑性能选一个带 `gguf` 的，这样才能在 ollama 里部署。

我选了这个，显卡实在是太烂，各位按需选择即可。

![Hugging Face 模型选择](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAM7agABNUCN0VyQKKTNd0qW7bSQl_WqAALhC2sbfdcJRG0oAAE4qeEeyQEAAwIAA3cAAzsE.png)

点击使用此模型，选择 ollama，就能看见安装命令了。

![Ollama 安装命令](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAM8agABNZI67j_aa-cFI1SMdVx51G5uAALiC2sbfdcJRDXCgklKuzGyAQADAgADeQADOwQ.png)

不过你先别急，还有一步要准备。

## 1.4 git 的安装

没错，需要用到 git，如果你已经安装过，那就跳过。

<https://git-scm.com/install/windows>

依旧是 Windows 链接，不过其他系统也都支持。

![Git 下载页面](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAM9agABNhesjmc424vkepJBtTasjbJZAALjC2sbfdcJRHjiuqPQ6mWrAQADAgADeQADOwQ.png)

根据你的系统版本选个合适的就行。

# 2. 正式开始安装部署

到了这里，所有前期准备都已经完成。

打开 git bash，输入 1.3 那里复制的安装代码，粘贴到 git 里面回车运行，等待下载完成。

然后就没了，就已经部署结束了，你可以在对话框里直接问问题了。

觉得命令行不好看也可以安装一个浏览器插件，叫 page assist。

这样就可以在浏览器里进行调用了。

以防万一，我就不问什么敏感问题了。

![最终效果](https://image.xcfake150.asia/file/AgACAgEAAyEGAATgHtSGAAM-agABOGXuO3ZqxvuVx-OPZICZiyoDAALkC2sbfdcJRPUGJo0z7X4VAQADAgADeAADOwQ.png)

没了，就这样。
