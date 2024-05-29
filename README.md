## pillar-neo-vim

use neovim to develop front-end project.

## 前置条件

安装 neovim, lazygit:

```sh
brew install neovim
brew install jesseduffield/lazygit/lazygit
```

安装 plug 插件:

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

安装字体: https://www.nerdfonts.com/font-downloads 其中, JetBrainsMono Nerd Font 的小字可读性最高

推荐 terminal: Alacritty

## 常用热键

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
