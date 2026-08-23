#!/bin/bash

# ========== 用户设置 ==========
# 你的预设名字是 MIN 到 MAX（包含两端）的整数
MIN=0
MAX=10          # ← 改成你实际的最大数字 n
# ==============================

PROFILE=$(( RANDOM % (MAX - MIN + 1) + MIN ))
osascript -e "tell application \"Terminal\" to set current settings of selected tab of window 1 to settings set \"$PROFILE\""
