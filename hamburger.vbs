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
