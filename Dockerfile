FROM ubuntu:20.04

# steam 参数
ARG STEAM_CMD_DIR="/home/steam/steamcmd"
ARG STEAM_GAME_DIR="/home/steam/games"

RUN dpkg --add-architecture i386
RUN apt-get clean && \
    apt-get update -y && \
    apt-get upgrade -y

# 校准服务器时间
ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN apt-get install tzdata

# 安装系统 GBK 和 UTF-8 中文语言包
RUN apt-get install -y language-pack-zh-hans language-pack-zh-hans-base \
                    language-pack-gnome-zh-hans language-pack-gnome-zh-hans-base
RUN apt-get install -y locales && \
    echo 'zh_CN.GBK GBK' >> /etc/locale.gen && \
    echo 'zh_CN.UTF-8 UTF-8' >> /etc/locale.gen && \
    echo "LANG=zh_CN.UTF-8" >> /etc/environment && \
    locale-gen

# 安装系统必要组件
RUN apt-get install -y curl wget vim zip unzip git telnet net-tools cron logrotate rsyslog tofrodos
RUN apt-get install -y python3 python3-pip
RUN ln -s /usr/bin/python3 /usr/bin/python && \
    ln -s /usr/bin/todos /usr/bin/unix2dos && \
    ln -s /usr/bin/fromdos /usr/bin/dos2unix 
RUN python -m pip install --upgrade pip


# ------------------------------------
# 安装 32 位运行环境 和 编译环境
RUN apt-get install -y zlib1g:i386 libstdc++6:i386 libc6:i386 \
                       g++-multilib

# 创建 steam 文件夹
RUN mkdir -p ${STEAM_CMD_DIR} && \
    mkdir -p ${STEAM_GAME_DIR}

# 下载并解压 steamcmd
RUN cd ${STEAM_CMD_DIR} && \
    wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz && \
    tar -xvzf steamcmd_linux.tar.gz
# ------------------------------------


WORKDIR ${STEAM_CMD_DIR}
RUN echo "alias ll='ls -l'" >> /root/.bashrc
ADD ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod a+x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
