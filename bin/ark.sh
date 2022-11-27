


session_name="ARK_Docker_Server_By_EXP"
svc_map="TheIsland"
group_svc_map="ARK_Maps_By_EXP"
svc_pwd="svc010203"
admin_pwd="admin040506"
max_players=20
update_on_start="false"
backup_on_stop="false"
pre_update_backup="true"
warn_on_stop="true"
enable_crossplay="false"
disable_battleye="false"
game_mod_ids=""


# 服务端端口
GAME_CLIENT_PORT=7777
# 暴露给玩家连接主机的端口（总是 GAME_CLIENT_PORT + 1）
UDP_SOCKET_PORT=7778
# 暴露给 Steam 用于搜索服务时的端口
SERVER_LIST_PORT=27015
# 服务端命令行管理工具 RCON 的连接端口
RCON_PORT=27020
# 服务器名称
SESSION_NAME=$session_name
# 在 steam 服务器上的组内名称（唯一即可）
GROUP_SESSION_NAME="GN_${SESSION_NAME}"
# 地图名
SERVER_MAP=$svc_map
# 这个服务器上的地图组名称（当有多个图希望互通时，就把它们的地图组设置为一样）
GROUP_SERVER_MAP=$group_svc_map
SERVER_PASSWORD=$svc_pwd
ADMIN_PASSWORD=$admin_pwd
MAX_PLAYERS=$max_players
UPDATE_ON_START=$update_on_start
BACKUP_ON_STOP=$backup_on_stop
PRE_UPDATE_BACKUP=$pre_update_backup
WARN_ON_STOP=$warn_on_stop
ENABLE_CROSSPLAY=$enable_crossplay
DISABLE_BATTLEYE=$disable_battleye
GAME_MOD_IDS=$game_mod_ids



        组内名称：在这个服务器上的名字（必须唯一）

        服务器名称：在steam服务器上看到的名称

        最大人数：服务器可容纳的人数

        组名称：这个服务器上开的地图组名称（多个图希望哪些图互通的就设置一样，如一个孤岛的设置是2022，一个畸变的设置也是2022，这俩个图就能互通）

        集群目录：服务器上传缓存的位置玩家上传到方舟的角色和物品的缓存）


ShooterGame/Binaries/Linux/ShooterGameServer TheIsland?listen?Port=7779?QueryPort=27017AltSaveDirectoryName=gudao?SessionName="ARK原初-孤岛"?MaxPlayers=30?ServerAutoForceRespawnWildDinosInterval=259200?AllowCrateSpawnsOnTopOfStructures=True -ForceAllowCaveFlyers -AutoDestroyStructures -clusterid=2022 -ClusterDirOverride=/home/steam/ark/arkwq -NoBattlEye -crossplay -nosteamclient -game -server -log

ShooterGame/Binaries/Linux/ShooterGameServer ${SERVER_MAP}?\
listen?Port={GAME_CLIENT_PORT}?\
QueryPort=${SERVER_LIST_PORT}?\
AltSaveDirectoryName="${GROUP_NAME}"?\
SessionName="${GROUP_SESSION_NAME}"?\
MaxPlayers=${MAX_PLAYERS}?\
ServerAutoForceRespawnWildDinosInterval=259200?\
AllowCrateSpawnsOnTopOfStructures=True \
    -ForceAllowCaveFlyers \
    -AutoDestroyStructures \
    -clusterid=组名称 -ClusterDirOverride=集群目录 -NoBattlEye -crossplay -nosteamclient -game -server -log