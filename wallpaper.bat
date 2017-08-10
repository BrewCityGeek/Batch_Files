@echo off

CD /D %~dp0
copy plusguy.jpg c:\windows\plusguy.jpg
REG ADD "HKCU\Control Panel\Desktop" /f /v WallpaperStyle /t REG_SZ /d 0
REG ADD "HKCU\Control Panel\Desktop" /f /v Wallpaper /t REG_SZ /d c:\windows\plusguy.jpg