# ARK-docker

> docker 一键部署 ARK - 方舟生存进化

------



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


## 参考文档

- 《[方舟生存进化: docker一键部署](https://ssst0n3.github.io/post/%E6%B8%B8%E6%88%8F/%E6%96%B9%E8%88%9F%E7%94%9F%E5%AD%98%E8%BF%9B%E5%8C%96-docker%E4%B8%80%E9%94%AE%E9%83%A8%E7%BD%B2.html)》
- 《[ark-server-tools](https://github.com/arkmanager/ark-server-tools)》
- 《[arkserver](https://github.com/thmhoag/arkserver)》
- 《[Dockerize ARK managed with ARK-Server-Tools](https://hub.docker.com/r/hermsi/ark-server/)》

