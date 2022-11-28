#!/bin/bash

STEAM_DIR="/home/steam"
STEAM_CMD_DIR="${STEAM_DIR}/steamcmd"
STEAM_GAME_DIR="${STEAM_DIR}/games"
STEAM_SAVE_DIR="${STEAM_DIR}/saves"
ARK_APP_DIR="${STEAM_GAME_DIR}/ark"
ARK_SAVE_DIR="${STEAM_SAVE_DIR}/ark"
# ARK_MGR_DIR="/etc/arkmanager"

# 确保 steam 可读写挂载目录的权限  
mkdir -p ${ARK_APP_DIR}
mkdir -p ${ARK_SAVE_DIR}
chown -R 1000:1000 ${STEAM_DIR}
# chown -R 1000:1000 ${ARK_MGR_DIR}

# 保持前台运行，避免 docker 挂起
while true ; do
    sleep 3600
done

exit 0
