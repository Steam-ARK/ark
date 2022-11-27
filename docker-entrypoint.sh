#!/bin/bash

STEAM_DIR="/home/steam"
STEAM_CMD_DIR="${STEAM_DIR}/steamcmd"
STEAM_ARK_DIR="${STEAM_DIR}/games/ARK"
ARK_MGR_DIR="/etc/arkmanager"

# 确保 steam 可读写挂载目录的权限  
mkdir -p ${STEAM_ARK_DIR}
chown -R 1000:1000 ${STEAM_ARK_DIR}
chown -R 1000:1000 ${ARK_MGR_DIR}

# 保持前台运行，避免 docker 挂起
while true ; do
    sleep 3600
done

exit 0
