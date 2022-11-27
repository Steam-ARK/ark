#!/bin/bash
# ��װ steam ��Ϸ�����
#------------------------------------------------
# ����ִ��ʾ����
# bin/install_game.ps1
#------------------------------------------------

Write-Host "�˽ű������� Docker �а�װ steam ĳ����Ϸ�Ķ��������� ..."
Write-Host "�����лῪ�� steam �նˣ��������ʾ���н��� ."

$CONTAINER_NAME = "ARK_SVC"
$CONTAINER_ID = (docker ps -aq --filter name="$CONTAINER_NAME")
if(![String]::IsNullOrEmpty($CONTAINER_ID)) {
    Write-Host "���� steam �ն������������������� :"
    Write-Host '1. [������ϷĿ¼]: force_install_dir /home/steam/games/${GAME_NAME}'
    Write-Host "   [ARK ʾ������]: force_install_dir /home/steam/games/ARK"
    Write-Host "2. [��¼�����û�]: login anonymous"
    Write-Host '3. [��װ��Ϸ˽��]: app_update ${GAME_ID}'
    Write-Host "   [ARK ʾ������]: app_update 376030"
    Write-Host '4. [���£���ѡ��]: app_update ${GAME_ID} validate'
    Write-Host "   [ARK ʾ������]: app_update 376030 validate"
    docker exec -it $CONTAINER_ID /home/steam/steamcmd/steamcmd.sh

} else {
    Write-Host "[$CONTAINER_NAME] ����û������ ..."
}

Write-Host "��װ�ű���ֹ."
