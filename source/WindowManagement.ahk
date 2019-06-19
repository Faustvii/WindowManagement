#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling

TrayIcon = \..\icons\flatscreen-tv.ico
If (FileExist(TrayIcon)) {
    Menu, Tray, Icon, %TrayIcon%
}

^`::Send #+{Left}