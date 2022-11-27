#!/bin/bash

# steam 参数
# STEAM_CMD_DIR="/home/steam/steamcmd"
# STEAM_GAME_DIR="/home/steam/games"

# # 游戏参数： ARK 方舟生存进化
# GAME_DIR="${STEAM_GAME_DIR}/ARK"
# GAME_ID="376030"

# # 运行 steamcmd
# chmod a+x *.sh && \
#     ./steamcmd.sh

# # 设置游戏安装目录
# force_install_dir ${GAME_DIR}

# # 匿名方式登录 steam
# login anonymous
 
# # 安装并更新游戏服务端
# app_update ${GAME_ID} && \
#     app_update ${GAME_ID} validate

# 保持前台运行，避免 docker 挂起
while true ; do
    sleep 3600
done

exit 0
