# Javascript \ React \ Nodejs Vimrc

> One script installed VIM config and Plugins

> This package testing Mac OS, other System please look and edit `init.sh`

This VIM config focus Javascript:

- Nodejs
- React
- Vue
- html, js, css

## Install

First, you must isntall `nodejs` and `brew`, copy this script in your Terminal:

```sh
cd ~/
git clone -b master --single-branch https://github.com/ymzuiku/vim-front-end
cd vim-front-end
bash init.sh
```

## After installed, let me preview

#### YouCompleteMe:

Use YouCompleteMe and tern_for_vim:

![](./img/YouCompleteMe.png)

#### Mark git change in tree(hotKey: `si`):

![](./img/tree.png)

#### ESLint:

![](./img/eslint.png)

#### file Search(hotKey: `fj`):

![](./img/fzf.png)

#### code Search(hotKey: `fk`):

![](./img/ag.png)

#### Git change files Search(hotKey: `fg`):

![](./img/gitfile.png)

#### vim.easymotion (hotKey: `q`):

![](./img/easymotion.png)

And other feature:

- Use Prettier format
- Use eslint & eslint_d lint
- Use gitgutter show git change in every line
- Other some detile feature look `.vimrc` Plugs

### If mac use vim open file, have this error:

`YouCompleteMe unavailable: cannot import name _remove_dead_weakref`

And close vim, print this:

```
Vim: Caught deadly signal SEGV
Vim: Finished.
```

This error is python path unused system python, need use system python, fix bug like this:

```sh
$ python -V # echo like: Python 2.7.15
$ export PATH=/usr/bin:$PATH
$ python -V # echo like: Python 2.7.10
```

If you need always chagne python PATH, you need `export PATH` in `.bash_profile`

If you didn't want always change PATH, you can add `function` in `.bash_profile`, like this:

```sh
function v(){
  export path=/usr/bin:$path
  vim $1 $2 $3 $4 $5 $6 $7 $8 $9
}
```

Use: `v file.js` open vim

## Diffent Default VIM config:

`q, s, f <space>` is diffent VIM keys, Please look `.vimrc` file:

- `<space> easymove`
- `- = <c-b> -flip page up, because tmux uesd <c-b>`
- `= = <c-f> -flip page down`
- `s+v\h\j\k\l\c = <c-w>+v\h\j\k\l\c`
- `sc = :tabnew`
- `sT = :tabo`
- `s[ = last tab`
- `s] = next tab`
- `sb = :!bash open bash, and input exec goback vim`
- `sr = source ~/.vimrc`
- `sa = ggVG -select all line`

- `sm = :Masks -find masks`
- `si = find now file in tree`
- `sI = show files tree`
- `so = hidden/show git and number sign, facility mouse copy multiline`
- `sO = hidden/show hight line`
- `s1~9 = switch tab 1~9`
- `s<space> delete line end space`

- `su hidden/show undo-tree，g-, g= switch undo-tree`
- `fh = :Files -find file`
- `fj = :History -look history open files`
- `fk = :Rg -find code`
- `fg = :GFiles? -find git change file`
- `fb = :Buffers -change opened buffer`
- `= = format file`
- `f@ = @:`
- `fs = :w<cr>`
- `fq = :q<cr>`
- `fr = :%s/ -replace`
- `fM = :delm!`
- `f[ = last eslint error line`
- `f] = next eslint error line`

- `<c-j> = move line down`
- `<c-k> = move line up`
- `= = <c-f>
- `- = <c-b>
- `<tab>` select snippets
- `<cr>` select YouCompleteMe info
- `<c-space>` show YouCompleteMe

- `q = commenter one line`
- `q = commenter multiline in VISUAL Mode`

- `<leader>m = preview markdown`
- `<leader>M = stop preview markdown`

Fast copy and paste:

- `0~9 = "0~9y in VISUAL mode`
- `f0~9 = "0~9p`
- `F0~9 = "0~0P`

Change Theme:

- `<leader>c1~9 - Change Theme colors`

These is self hot keys, if you don't like, you can change `.vimrc` easy.

## UltiSnips

Add `javascript.snippets` in `~/.vim/UltiSnips`, can setting snippets

## That's all, enjoy it.

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
