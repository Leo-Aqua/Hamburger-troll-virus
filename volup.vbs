do
wscript.sleep 50
Set WshShell = CreateObject("WScript.Shell")
WshShell.SendKeys(chr(&hAF))
loop
