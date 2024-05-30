## pillar-neo-vim

Use neovim develop nodejs and golang.

本着简洁的原则，只保留了最常用的插件，主要是 copilot、LSP、搜索、git、文件管理、代码重构、代码跳转、书签等功能。

## 前置条件

安装 neovim, lazygit:

```sh
brew install neovim
brew install jesseduffield/lazygit/lazygit
```

安装 plug 插件:

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

安装字体:

https://www.nerdfonts.com/font-downloads 其中, JetBrainsMono Nerd Font 的小字可读性最高

安装 terminal:

推荐 Alacritty

## 安装

克隆本工程到本地 ~/.config/nvim

nvim 打开后， 执行:

```sh
:PackerSync
```

## pillar-neo-vim 热键

完整的热键，可以查看 lua/keymap.lua 文件

- <leader> 为空格
- <leader>f 查找文件内容
- <leader>s 查看 git status
- <leader>d 查看 problems
- <leader>a 查看 git status 改过的文件内容
- <leader>p 查看 git 范围内的内容
- <leader>e 查看 文件管理器
- <leader>g 查看 lazygit
- <leader>o 查看 查看打开过的文件
- <leader>r 重构变量名
- <leader>r 当前文件批量改名
- <leader>w 打开所有 git status 文件
- <leader>v 查看剪切板内容
- q 代替 C-w 管理窗口
- t1-t9 切换 tab
- to 关闭其他 tab
- tn 新建 tab
- 1g-40g 打开当前文件前 1-40 的 diff
- 0g 关闭 diff
- gr 查看引用
- gi 跳转定义
- gy 跳转类型定义
- gj 跳转到下一个 git 改动
- gk 跳转到上一个 git 改动
- mm 添加书签
- ma 查看所有书签
- mj 跳转到下一个书签
- mk 跳转到上一个书签

## vim 常用默认热键

- 针对单词的操作
- 替换单词方法： yiw 先复制单词，viwp 再替换另一个单词
- 以下 v 都可以使用 c、d、y 来代替以达到不同的效果，vi 表示某范围内，va 表示某范围内加范围边缘
- vi{ 选中{}中间的内容,不包括{}
- va{ 选中{}中间内容，包括{}
- vi( 选中()中间内容
- vi< 选中<>中间内容
- vi[ 选中[]中间内容
- vit 选中中间的内容
- vi” 选中”"中间内容
- vi’ 选中”中间的内容
- vis 选中一个句子
- vib 选中一个 block
- viw 选中一个单词
- vip 选中一个段落
- viwP (大写 P 可以保持剪切板)
- vim xxx.md --clean 清除 vim 的设置, 解决一些特殊问题
- guiw 单词改小写
- gUiw 单词改大写

- 展开折叠的行：
- zo：展开光标所在的折叠。
- zr：展开所有折叠。
- zf: 创建所选行的折叠
- zm：折叠所有内容。
- zE：删除所有折叠记录。

## Licenes

```
MIT License

Copyright (c) 2013-present, Facebook, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
