---
title: 关于 Obsidian：最适合配合 AI 使用的笔记软件
date: 2026-04-07 22:10:00
categories:
  - 效率工具
  - AI
tags:
  - Obsidian
  - AI
  - 笔记
  - Markdown
---

## 前言：Obsidian 是什么

Obsidian 是一款笔记软件，主要使用 Markdown 格式。

- Markdown 格式语法很简单，适合人类阅读，也适合 AI 阅读。
- Markdown 文件本身逻辑清晰，AI 读取后也会继承这种逻辑性。
- 支持几乎所有的平台：iOS、Android、Windows、macOS、Linux。
- 所有文件，也就是你的笔记，全部都保存在你的本地设备上。

![Obsidian 界面示意](/images/obsidian-ai-notes/img-01.png)

---

## 1. 下载

### 1.1 Obsidian 的网站

Obsidian 官网支持简体中文：<https://obsidian.md/zh/>

根据自己的设备型号下载安装即可。首次安装时会让你选择仓库，也就是你想把笔记保存到什么位置，选一个你习惯的文件夹即可。

---

## 2. 怎么让你的智能体帮你写笔记

虽然 Obsidian 主打的是笔记的隐私性，但应该还是有很多人想接入 AI 使用，比如我。主要有两种方式。

### 2.1 让你的智能体读写你的笔记

这种方式其实非常简单，复制一下你保存笔记的本地文件路径，然后直接告诉 AI 你的笔记在这个位置就行。AI 在训练的时候被喂了大量的 Markdown 数据，所以非常擅长读写 Markdown 格式的文件。

相较于原始方法，也就是当 AI 无法直接读取帖子内容时，你只能：

1. 先复制这篇帖子的所有内容。
2. 把内容发给 AI。
3. 让 AI 总结成 Markdown 格式的文件。
4. 自己再去 Obsidian 里粘贴并整理。

交给智能体就简单很多，省去了不少麻烦：

- 首先还是一样，把内容复制给 AI。
- 然后让 AI 直接总结到 Obsidian 里，甚至可以让 AI 把笔记关联到相关笔记。

比如我的笔记位置在 E 盘的 `notebook` 文件夹，只需要告诉 AI 让智能体去读取即可。`openclaw`、`Claude Code`、`opencode`、`codex` 等等，总之只要是能读写你电脑文件的都可以。

### 2.2 在 Obsidian 里接入 AI

又或者说，你自己在 Obsidian 里写了一篇笔记，但是由于刚开始使用 Markdown 格式，所以写得并不美观；又或者想到哪写到哪，以至于笔记的逻辑只有你自己能看懂。

这种时候，就可以把 AI 接入 Obsidian 里，让 AI 来总结和整理笔记。在美观的同时，也能梳理逻辑，这样你的笔记就不是只有你能看懂了。

这里主要会用到两个插件。第一个是 `AI Providers`：

![AI Providers 插件](/images/obsidian-ai-notes/img-02.png)

它主要用来把 AI 接入到 Obsidian。

第二个是 `Local GPT`：

![Local GPT 插件](/images/obsidian-ai-notes/img-03.png)

这个主要用于启用相关功能。在 `actions list` 里创建一个动作，再设置一个快捷键，就可以在笔记里选中全文，直接让 AI 总结了。

## 3. 相关功能

其实这里没啥好说的，看图就好。

![Obsidian 相关功能示意](/images/obsidian-ai-notes/img-04.png)

你可以把相关的笔记链接到一起。记不住所谓的语法也没关系，只需要右键一下，新增链接，选中你想链接的笔记就行了。

## 4. 多端同步

只需要用坚果云就行。因为官方云服务要订阅，但是坚果云不用，而且个人使用完全足够。

在第三方插件里直接搜索“坚果云”即可，配置也很简单，这里就不展开了。

## 5. 总结

好用，爱用。还有很多功能，可以自行探索。
