#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

f1::Numpad3

#IfWinNotActive ahk_class Kodi
^!f4::Run C:\Program Files (x86)\Kodi\Kodi.exe,outputvarpid
msgbox %outputvarpid%


#IfWinNotexist ahk_class Kodi
^!f2::Run C:\Users\Home\AppData\Roaming\Kodi\userdata\KillAll.cmd

#IfWinActive ahk_class Kodi
Tab::c

#IfWinActive ahk_class PowerDVD15
^!f1::Run D:\Kodi Tools\PenguinSubtitlePlayer.exe,outputvarpid
msgbox %outputvarpid%


