#!/bin/sh
# -------------------------------
# 删除 ARK 服务端中原本的大文件（测试用）
# -------------------------------
# 执行: bin/remove_large_files.sh
# -------------------------------

BASE_DIR=`pwd`

function del() {
    dir=$1
    filename=$2
    zip_name="${filename}.7z"
    del7z=$3

    cd "${dir}"

    rm -f "${filename}"
    echo "[${filename}] has been deleted"

    if [[ "x${del7z}" = "xON" ]] ; then
        rm -f "${zip_name}"
        echo "[${zip_name}] has been deleted"
    fi

    cd "${BASE_DIR}"
}


echo "delete all large files ..."

del "ShooterGame/Binaries/Win64" "ShooterGameServer.pdb"
del "ShooterGame/Content/Genesis2/Matinee/Stinger/Animation" "GEN2_STG_Santiago.uasset"
del "ShooterGame/Content/Mods/CrystalIsles" "LandscapeSublevel_Mainland_Auto9.umap"
del "ShooterGame/Content/Mods/FjordurOfficial" "PGS_LandscapeSublevel.umap"
del "ShooterGame/Content/Mods/LostIsland" "LandscapeSublevel.umap"
del "ShooterGame/Content/Mods/Ragnarok" "Ragnarok_Landscape_V2.umap"
del "ShooterGame/Content/Mods/TheCenter" "TheCenter.umap"
del "ShooterGame/Content/Mods/Valguero" "LandscapeSublevel.umap"
del "ShooterGame/Content/Maps/Aberration" "AB_Landscape.umap"
del "ShooterGame/Content/Maps/Extinction" "Ext_Landscape.umap"
del "ShooterGame/Content/Maps/ScorchedEarth" "SE_Landscape.umap"
del "ShooterGame/Content/Maps/TheIslandSubMaps" "LandscapeSublevel.umap"
del "ShooterGame/Content/Maps/Genesis2" "Gen2.umap" "ON"

echo "all done ."
