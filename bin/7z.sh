#!/bin/sh
# -------------------------------

function un7zip() {
    dir=$1
    filename=$2
    zip_name="${filename}.7z"

    cd ${dir}
    if [ ! -f "${filename}" ];then
        if [ -f "${zip_name}" ];then
            7z x "${zip_name}"
        else 
            echo "[${zip_name}] does not exist"
        fi
    else
        echo "[${filename}] already exist"
    fi
    cd -
}

function un7zip_segments() {
    dir=$1
    filename=$2
    zip_name="${filename}.7z"
    segment_name="${zip_name}.*"

    cd ${dir}
    if [ ! -f "${zip_name}" ];then
        cat "${segment_name}" > "${zip_name}"
    fi
    cd -

    un7zip "${dir}" "${filename}"
}

un7zip "ShooterGame/Binaries/Win64" "ShooterGameServer.pdb"
un7zip "ShooterGame/Content/Genesis2/Matinee/Stinger/Animation" "GEN2_STG_Santiago.uasset"
un7zip "ShooterGame/Content/Mods/CrystalIsles" "LandscapeSublevel_Mainland_Auto9.umap"
un7zip "ShooterGame/Content/Mods/FjordurOfficial" "PGS_LandscapeSublevel.umap"
un7zip "ShooterGame/Content/Mods/LostIsland" "LandscapeSublevel.umap"
un7zip "ShooterGame/Content/Mods/Ragnarok" "Ragnarok_Landscape_V2.umap"
un7zip "ShooterGame/Content/Mods/TheCenter" "TheCenter.umap"
un7zip "ShooterGame/Content/Mods/Valguero" "LandscapeSublevel.umap"
un7zip "ShooterGame/Content/Maps/Aberration" "AB_Landscape.umap"
un7zip "ShooterGame/Content/Maps/Extinction" "Ext_Landscape.umap"
un7zip "ShooterGame/Content/Maps/ScorchedEarth" "SE_Landscape.umap"
un7zip "ShooterGame/Content/Maps/TheIslandSubMaps" "LandscapeSublevel.umap"
un7zip_segments "ShooterGame/Content/Maps/Genesis2" "Gen2.umap"
