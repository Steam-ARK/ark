# PowerShell
# 解压指定目录及其子目录下的所有 7z 压缩文件
# 需要预装 7-zip: https://www.7-zip.org/
# ------------------------------------------------
# 示例: 
#   ./script/unpack_7zip.ps1
#   ./script/unpack_7zip.ps1 -exe "C:\Program Files\7-Zip\7z.exe"
# ------------------------------------------------

param(
    [string]$root_dir="",
    [string]$exe="C:\Program Files\7-Zip\7z.exe"
)

$OP_LIB_DIR = "./ShooterGame"
if(![String]::IsNullOrEmpty($root_dir)) {
    $OP_LIB_DIR = $root_dir
}

function unpack_7zip([string]$exe7z, [string]$package, [string]$target){
    $item=Get-Item $exe7z
    $unpack_exe=Join-Path -Path $item.Directory -ChildPath $item.Name
    $cmd="""$unpack_exe"" e $package -o$target -y"
    cmd /c $cmd
}

# 未分卷的压缩文件集
$items_01 = Get-ChildItem $OP_LIB_DIR -recurse "*.7z"

# 已分卷的压缩文件集（选中第一个即可）
$items_02 = Get-ChildItem $OP_LIB_DIR -recurse "*.7z.001"

# 把找到的两类压缩文件依次解压
$items = $items_01 + $items_02
Foreach($item in $items) {
    Write-Output "Unpacking $item ..."
    unpack_7zip -exe7z $exe -package $item.FullName -target $item.Directory
    Write-Output "Unpack $item done ."
}

