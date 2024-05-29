require("plugins.index")
require("utils.index")
require("setting")
require("keymap")

-- ------------------------
-- 前置条件
-- ------------------------
-- 安装 neovim, lazygit:

-- brew install neovim
-- brew install jesseduffield/lazygit/lazygit

-- 安装 plug 插件:
-- curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
-- iTerm 的字体改成 https://www.nerdfonts.com/font-downloads
-- 其中, JetBrainsMono Nerd Font 的小字可读性最高
-- ------------------------
-- 常用热键
-- -----------------------
--  针对单词的操作
-- 替换单词方法： yiw 先复制单词，viwp再替换另一个单词
-- 以下v都可以使用c、d、y来代替以达到不同的效果，vi表示某范围内，va表示某范围内加范围边缘
-- vi{ 选中{}中间的内容,不包括{}
-- va{ 选中{}中间内容，包括{}
-- vi( 选中()中间内容
-- vi< 选中<>中间内容
-- vi[ 选中[]中间内容
-- vit 选中中间的内容
-- vi” 选中”"中间内容
-- vi’ 选中”中间的内容
-- vis 选中一个句子
-- vib 选中一个block
-- viw选中一个单词
-- vip 选中一个段落
-- viwP (大写P可以保持剪切板)
-- vim xxx.md --clean 清除vim的设置, 解决一些特殊问题
-- guiw 单词改小写
-- gUiw 单词改大写

-- 展开折叠的行：
-- zo：展开光标所在的折叠。
-- zr：展开所有折叠。
-- zf: 创建所选行的折叠
-- zm：折叠所有内容。
-- zE：删除所有折叠记录。