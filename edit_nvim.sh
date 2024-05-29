#!/bin/bash

tmux kill-window
tmux new-window
tmux send-keys "nvim \"$1\"" C-m
