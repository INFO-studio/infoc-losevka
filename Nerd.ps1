$sourceDir = "E:\Projects\Iosevka\dist\InfocIosevka\TTF"
$targetDir = "E:\Projects\Iosevka\dist\InfocIosevka\TTF-Nerd"
$fontPatcherPath = "C:\Users\infoc\Downloads\FontPatcher\font-patcher"

# 创建目标文件夹（如果不存在）
if (-Not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir | Out-Null
}

# 获取所有 .ttf 文件
$fontFiles = Get-ChildItem -Path $sourceDir -Filter *.ttf

# 遍历并补全每个字体文件
foreach ($fontFile in $fontFiles) {
    $inputFile = Join-Path $sourceDir $fontFile.Name
    & fontforge -script $fontPatcherPath $inputFile --complete --makegroups -1
    Write-Host "已补全字体: $($fontFile.Name)"
}

Write-Host "所有字体已补全并保存到 $targetDir"