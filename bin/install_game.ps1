#!/bin/bash
# 运行 Calibre 服务
#------------------------------------------------
# 命令执行示例：
# bin/install_game.ps1
#------------------------------------------------

$CONTAINER_NAME = "steam_game_server"
$CONTAINER_ID = (docker ps -aq --filter name="$CONTAINER_NAME")
if(![String]::IsNullOrEmpty($CONTAINER_ID)) {
    docker exec -it $CONTAINER_ID bash
} else {
    Write-Host "[$CONTAINER_NAME] is not running."
}
