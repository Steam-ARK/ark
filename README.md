# ARK-docker

> docker 一键部署 ARK - 方舟生存进化

------


https://developer.valvesoftware.com/wiki/SteamCMD#Docker
https://hub.docker.com/r/cm2network/steamcmd/


346110 = ARK: Survival Evolved
376030 = ARK: Survival Evolved Dedicated Server

#其中数字是这游戏的steamapp id
网站查看https://steamcommunity.com/app
搜索需要查看的游戏，然后看浏览器网址窗口app后面跟的数值就是这个app的id



Variable	Default value	Explanation
SESSION_NAME	Dockerized ARK Server by github.com/hermsi1337	The name of your ARK-session which is visible in game when searching for servers
SERVER_MAP	TheIsland	Desired map you want to play
SERVER_PASSWORD	YouShallNotPass	Server password which is required to join your session. (overwrite with empty string if you want to disable password authentication)
ADMIN_PASSWORD	Th155houldD3f1n3tlyB3Chang3d	Admin-password in order to access the admin console of ARK
MAX_PLAYERS	20	Maximum number of players to join your session
UPDATE_ON_START	false	Whether you want to update the ARK-server upon startup or not
BACKUP_ON_STOP	false	Create a backup before gracefully stopping the ARK-server
PRE_UPDATE_BACKUP	true	Create a backup before updating ARK-server
WARN_ON_STOP	true	Broadcast a warning upon graceful shutdown
ENABLE_CROSSPLAY	false	Enable crossplay. When enabled battleye should be disabled as it likes to disconnect epic players
DISABLE_BATTLEYE	false	Disable Battleye protection
ARK_SERVER_VOLUME	/app	Path where the server-files are stored
GAME_CLIENT_PORT	7777	Exposed game-client port
UDP_SOCKET_PORT	7778	Raw UDP socket port (always Game client port +1)
RCON_PORT	27020	Exposed RCON port
SERVER_LIST_PORT	27015	Exposed server-list port
GAME_MOD_IDS	empty	Additional game-mods you want to install, seperated by comma. (e.g. GAME_MOD_IDS="487516323,487516324,487516325")



ShooterGame/Binaries/Linux/ShooterGameServer TheIsland?listen?Port=7779?QueryPort=27017AltSaveDirectoryName=gudao?SessionName="ARK原初-孤岛"?MaxPlayers=30?ServerAutoForceRespawnWildDinosInterval=259200?AllowCrateSpawnsOnTopOfStructures=True -ForceAllowCaveFlyers -AutoDestroyStructures -clusterid=2022 -ClusterDirOverride=/home/steam/ark/arkwq -NoBattlEye -crossplay -nosteamclient -game -server -log




参数说明：

        地图：要开什么地图就在地图位置写入相应的地图名（这里是孤岛）

        端口：服务端的端口（必须唯一）

        搜索端口：在steam上搜索时使用的端口（必须唯一）

        组内名称：在这个服务器上的名字（必须唯一）

        服务器名称：在steam服务器上看到的名称

        最大人数：服务器可容纳的人数

        组名称：这个服务器上开的地图组名称（多个图希望哪些图互通的就设置一样，如一个孤岛的设置是2022，一个畸变的设置也是2022，这俩个图就能互通）

        集群目录：服务器上传缓存的位置玩家上传到方舟的角色和物品的缓存）

ShooterGame/Binaries/Linux/ShooterGameServer 地图?listen?Port=端口?QueryPort=搜索端口AltSaveDirectoryName=组内名称?SessionName="服务器名称"?MaxPlayers=最大人数?ServerAutoForceRespawnWildDinosInterval=259200?AllowCrateSpawnsOnTopOfStructures=True -ForceAllowCaveFlyers -AutoDestroyStructures -clusterid=组名称 -ClusterDirOverride=集群目录 -NoBattlEye -crossplay -nosteamclient -game -server -log

2.游戏配置文件：

        全局文件配置：

在/home/steam/ARK/ShooterGame/Saved/Config/LinuxServer文件夹下的Game.ini和GameUserSettings.ini一般只设置GameUserSettings.ini文件




## 参考文档

https://blog.csdn.net/xiaotian2333333/article/details/124733348


- 《[方舟生存进化: docker一键部署](https://ssst0n3.github.io/post/%E6%B8%B8%E6%88%8F/%E6%96%B9%E8%88%9F%E7%94%9F%E5%AD%98%E8%BF%9B%E5%8C%96-docker%E4%B8%80%E9%94%AE%E9%83%A8%E7%BD%B2.html)》
- 《[ark-server-tools](https://github.com/arkmanager/ark-server-tools)》
- 《[arkserver](https://github.com/thmhoag/arkserver)》
- 《[Dockerize ARK managed with ARK-Server-Tools](https://hub.docker.com/r/hermsi/ark-server/)》



