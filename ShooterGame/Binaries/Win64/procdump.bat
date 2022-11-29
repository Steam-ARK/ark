cd %~dp0
start ShooterGame.exe
procdump.exe -ma -e -64 -w ShooterGame.exe
exit