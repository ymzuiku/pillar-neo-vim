#!/bin/bash

# 发送热键 Ctrl+o, 空格, q, 空格, o
# 发送热键 Ctrl+o, q, 空格, Shift+O
# tmux send-keys 'C-o'
# sleep 0.2
# tmux send-keys 'q'
# sleep 0.5
# tmux send-keys ' '
# sleep 0.2
# tmux send-keys 'O'


# 启动新的 nvim 实例并跳转到指定的文件和行
tmux kill-window
tmux new-window "nvim $1"
