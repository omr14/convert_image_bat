@echo off
setlocal enabledelayedexpansion

rem ImageMagickのコマンドを実行
for %%a in ("%./*.jpg") do (
    magick convert "%%a" -sampling-factor 4:2:0 -interlace jpeg -quality 92 "./%%~na.jpeg"
)

echo 変換しました。
pause
exit
