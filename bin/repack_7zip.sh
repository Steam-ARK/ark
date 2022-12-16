#!/bin/bash
# -------------------------------
# 重新压缩 ARK 服务端中原本的大文件（超过 100M 无法上传 Github），常用于服务端版本更新
# 需要预装 7-zip: https://www.7-zip.org/
# -------------------------------
# 示例: bin/repack_7zip.sh
# -------------------------------

BASE_DIR=`pwd`

7zip() {
    dir=$1
    filename=$2
    zip_name="${filename}.7z"

    cd "${dir}"

    if [ ! -f "${filename}" ];then
        echo "[${zifilenamep_name}] does not exist"
    else
        rm -f "${zip_name}"
        7z a "${zip_name}" "${filename}"
    fi
    cd "${BASE_DIR}"
}

7zip_segments() {
    dir=$1
    filename=$2
    zip_name="${filename}.7z"
    segment_name="${zip_name}.*"
    size="95m"

    cd "${dir}"

    if [ ! -f "${filename}" ];then
        echo "[${zifilenamep_name}] does not exist"
    else
        rm -f "${zip_name}"
        ls ${segment_name} | xargs rm -f
        7z a "${zip_name}" "${filename}" -v${size}
    fi
    cd "${BASE_DIR}"
}


echo "7zip all files ..."

7zip "ShooterGame/Binaries/Win64" "ShooterGameServer.pdb"
7zip "ShooterGame/Content/Genesis2/Matinee/Stinger/Animation" "GEN2_STG_Santiago.uasset"
7zip "ShooterGame/Content/Mods/CrystalIsles" "LandscapeSublevel_Mainland_Auto9.umap"
7zip "ShooterGame/Content/Mods/FjordurOfficial" "PGS_LandscapeSublevel.umap"
7zip "ShooterGame/Content/Mods/LostIsland" "LandscapeSublevel.umap"
7zip "ShooterGame/Content/Mods/Ragnarok" "Ragnarok_Landscape_V2.umap"
7zip "ShooterGame/Content/Mods/TheCenter" "TheCenter.umap"
7zip "ShooterGame/Content/Mods/Valguero" "LandscapeSublevel.umap"
7zip "ShooterGame/Content/Maps/Aberration" "AB_Landscape.umap"
7zip "ShooterGame/Content/Maps/Extinction" "Ext_Landscape.umap"
7zip "ShooterGame/Content/Maps/ScorchedEarth" "SE_Landscape.umap"
7zip "ShooterGame/Content/Maps/TheIslandSubMaps" "LandscapeSublevel.umap"
7zip_segments "ShooterGame/Content/Maps/Genesis2" "Gen2.umap"

echo "all done ."
