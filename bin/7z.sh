#!/bin/sh
# -------------------------------

function compress() {
    dir=$1
    filename=$2

    cd ${dir}
    7z a -t7z "${filename}.7z" "{filename}"
    cd -
}

compress "ShooterGame/Binaries/Win64" "ShooterGameServer.pdb"
compress "ShooterGame/Content/Genesis2/Matinee/Stinger/Animation" "GEN2_STG_Santiago.uasset"
compress "ShooterGame/Content/Mods/CrystalIsles" "LandscapeSublevel_Mainland_Auto9.umap"
compress "ShooterGame/Content/Mods/FjordurOfficial" "PGS_LandscapeSublevel.umap"
compress "ShooterGame/Content/Mods/LostIsland" "LandscapeSublevel.umap"
compress "ShooterGame/Content/Mods/Ragnarok" "Ragnarok_Landscape_V2.umap"
compress "ShooterGame/Content/Mods/TheCenter" "TheCenter.umap"
compress "ShooterGame/Content/Mods/Valguero" "LandscapeSublevel.umap"
compress "ShooterGame/Content/Maps/Aberration" "AB_Landscape.umap"
compress "ShooterGame/Content/Maps/Extinction" "Ext_Landscape.umap"
compress "ShooterGame/Content/Maps/ScorchedEarth" "SE_Landscape.umap"
compress "ShooterGame/Content/Maps/TheIslandSubMaps" "LandscapeSublevel.umap"


# cd ShooterGame/Content/Maps/Genesis2
# 7z a -t7z Gen2.umap.7z Gen2.umap
# cd -