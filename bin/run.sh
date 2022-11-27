#!/bin/bash
# 运行 Calibre 服务
#------------------------------------------------
# 命令执行示例：
# ./run.ps1 -svc_pwd "${SPWD}" -admin_pwd "${APWD}" -max_players "${AMOUNT}" -svc_map "${MAP_NAME}" -game_mod_ids "{ID1},{ID2},...,{IDn}"
#------------------------------------------------

$SESSION_NAME="ARK-Docker-Server-By-EXP"
$SERVER_MAP="TheIsland"
$SERVER_PASSWORD="svc010203"
$ADMIN_PASSWORD="admin040506"
$MAX_PLAYERS=20
$UPDATE_ON_START="false"
$BACKUP_ON_STOP="false"
$PRE_UPDATE_BACKUP="true"
$WARN_ON_STOP="true"
$ENABLE_CROSSPLAY="false"
$DISABLE_BATTLEYE="false"
$GAME_MOD_IDS=""


set -- `getopt svc_pwd:p:i:g: "$@"`
while [ -n "$1" ]
do
  case "$1" in
    -svc_pwd) USERNAME="$2"
        shift ;;
    -p) PASSWORD="$2"
        shift ;;
    -i) U_ID="$2"
        shift ;;
    -g) G_ID="$2"
        shift ;;
  esac
  shift
done


echo "---------- Input Params ----------"
echo "SESSION_NAME = ${session_name}"
echo "SERVER_MAP = ${svc_map}"
echo "SERVER_PASSWORD = ${svc_pwd}"
echo "ADMIN_PASSWORD = ${admin_pwd}"
echo "MAX_PLAYERS = ${max_players}"
echo "UPDATE_ON_START = ${update_on_start}"
echo "BACKUP_ON_STOP = ${backup_on_stop}"
echo "PRE_UPDATE_BACKUP = ${pre_update_backup}"
echo "WARN_ON_STOP = ${warn_on_stop}"
echo "ENABLE_CROSSPLAY = ${enable_crossplay}"
echo "DISABLE_BATTLEYE = ${disable_battleye}"
echo "GAME_MOD_IDS = ${game_mod_ids}"
echo "----------------------------------"


# SESSION_NAME=${session_name} \
# SERVER_MAP=${svc_map} \
# SERVER_PASSWORD=${svc_pwd} \
# ADMIN_PASSWORD=${admin_pwd}; 
# MAX_PLAYERS=${max_players} \
# UPDATE_ON_START=${update_on_start} \
# BACKUP_ON_STOP=${backup_on_stop} \
# PRE_UPDATE_BACKUP=${pre_update_backup} \
# WARN_ON_STOP=${warn_on_stop} \
# ENABLE_CROSSPLAY=${enable_crossplay} \
# DISABLE_BATTLEYE=${disable_battleye} \
# GAME_MOD_IDS=${game_mod_ids} \
# docker-compose up -d
# echo "------- Server is Running --------"
