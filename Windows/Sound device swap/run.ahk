Menu, Tray, Icon, %A_WorkingDir%\icons\headset-w.ico,,1
VA_SetDefaultEndpoint("playback:" 3, 0)
VA_SetDefaultEndpoint("playback:" 3, 1)
VA_SetDefaultEndpoint("playback:" 3, 2)

#include VA.ahk

#Persistent
Menu, Tray, NoStandard
Menu, Tray, Add, &Switch Playback Device, #h
Menu, Tray, Add, 
Menu, Tray, Standard
Menu, Tray, Default, &Switch Playback Device
Return

#h::     ; Win+h toggles headphones / speakers
Toggle := !Toggle
VA_SetDefaultEndpoint("playback:" (Toggle ? 1 : 2), 0)
VA_SetDefaultEndpoint("playback:" (Toggle ? 1 : 2), 1)
VA_SetDefaultEndpoint("playback:" (Toggle ? 1 : 2), 2)
setIcon((Toggle ? 6 : 3))
return

setIcon(Toggle) {
if (Toggle == 3) {
Menu, Tray, Icon, %A_WorkingDir%\icons\headset-w.ico,,1
}else if (Toggle == 6){
Menu, Tray, Icon, %A_WorkingDir%\icons\speaker-w.ico,,1
}
}