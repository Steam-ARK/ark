#!/bin/bash
# SteamCMD installer

sudo apt-get install lib32gcc1
cd Engine
cd Binaries
mkdir ThirdParty
cd ThirdParty
mkdir SteamCMD
cd SteamCMD
mkdir Linux
cd Linux
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xf steamcmd_linux.tar.gz
