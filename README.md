# ARK: Survival Evolved Dedicated Server

> ARK: 方舟‧生存进化 - 完整服务端

------

## 介绍

此为 steam 版 ARK 服务端（20221129）。

> 与 [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD) 下载的服务端是一样的，配合 [ark-server-docker](https://github.com/lyy289065406/ark-server-docker.git) 使用


## 运行环境

![](https://img.shields.io/badge/OS|Linux-red.svg) ![](https://img.shields.io/badge/OS|Windows-blue.svg)


## 硬件要求

| 硬件 | 最低配置 | 推荐配置 | 流畅配置 |
|:---:|:---:|:---:|:---:|
| CPU | 2C | 4C | 8C|
| 内存 | 6G | 8G | 16G |
| 硬盘 | 30G | 50G | 100G |

> ARK 当前版本（20221129）的服务端大小为 18812537984 字节，约 18G


## 部署步骤

1. 下载此仓库: `git clone --depth 1 --branch master https://github.com/lyy289065406/ark.git`
2. 解压大文件: `bin/unpack_7zip.sh` 或 `bin/unpack_7zip.ps1`
3. 参考 [ARK Server configuration](https://ark.fandom.com/wiki/Server_configuration) 定制自己的启动脚本启动服务即可

其中，启动服务所需的可执行文件：

- Linux: [ShooterGame/Binaries/Linux/ShooterGameServer](./ShooterGame/Binaries/Linux/ShooterGameServer)
- Windows: [ShooterGame/Binaries/Win64/ShooterGameServer.exe](./ShooterGame/Binaries/Win64/ShooterGameServer.exe)

服务启动后会自动生成：

- 存档目录: [ShooterGame/Saved/Config](./ShooterGame/Saved/Config)
- 日志目录: [ShooterGame/Saved/Logs](./ShooterGame/Saved/Logs)

