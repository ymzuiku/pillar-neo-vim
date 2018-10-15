# Front end Vim

- html, js, css
- React
- Vue

## Install

First, you must isntall `nodejs` and `brew`, and do it:

### 1. Clone and init vim-front-end

```sh
cd ~/
git clone -b master --single-branch https://github.com/ymzuiku/vim-front-end
cd vim-front-end
bash init.sh
```

### 2. Install Plug

```sh
$ vim
$ :PlugInstall
```

![](./img/installPlug.png)

Waiting all plugin installed.

### 3. Install details

```sh
bash secondInstall.sh
```

Use `secondInstall.sh` script install these:

- cmake
- ctags
- Start YouCompleteMe Server
- fzf
- ag
- prettier
- eslint, eslint_d


Wait all dependent installed.

## Installed, Let me preview

#### YouCompleteteMe:

![](./img/YouCompleteMe.png)

#### Tree:

![](./img/tree.png)

#### ESLint:

![](./img/eslint.png)

#### file Search(fzf):

![](./img/fzf.png)

#### code Search(ag):

![](./img/ag.png)

#### GitChangeFile Search(fzf):

![](./img/gitfile.png)

And other feature:

- Use Prettier format
- Use eslint & eslint_d lint
- Use sm (hotKey) commenter one line, or In Select Mode user `m`(hotkey) commeter mutiLine
- Use gitgutter show git change in every line
- Other some detile feature look `.vimrc` Plugs

## Diffent Default VIM config:

`a, e, s, w, f, ; -, =, <space>` is diffent VIM keys, Please look `.vimrc` file:

- `; = :`
- `- = <c-b>`
- `= = <c-f>`
- `a = A`
- `e = I`
- `s+v\h\j\k\l\c = <c-w>+v\h\j\k\l\c`
- `ss = :w`
- `sq = :q`
- `s1~9 = 1~9gt`
- `st = :tabnew`
- `sT = :tabo`
- `sm = commenter one line`
- `ff = :Ag`
- `fj = :Files`
- `fk = :GFiles?`
- `fl = :Masks`
- `fs = @:` 
- `fm = format file`
- `xmap m = commenter`
- `<space>` is vim-easymotion-s

These is self hot keys, if you don't like, you can change `.vimrc` easy.

## Ok, enjoy it.

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
