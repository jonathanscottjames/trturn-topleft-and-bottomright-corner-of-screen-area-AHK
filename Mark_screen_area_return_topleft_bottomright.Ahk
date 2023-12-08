helpsmjsj=mark screee area abd return top left and bottom right
corners top left xy=xdsm,ydsm bottom right xy=xusm,yusm .. mouse mark
region of screen coords mode copyright jonathanscottjamesthegreat
CoordMode,Mouse, Screen
loopdlbsm:
MouseGetPos,xdsm,ydsm
GetkeyState dlbsm, LButton
if dlbsm=u
goto loopdlbsm
Gui,1: +Resize +LastFound -Caption  ;+AlwaysOnTop
WinSet, Transparent, 100
loopdrlbsm:
MouseGetPos,xusm,yusm
GetkeyState dlbrsm, LButton
xpos:=(xusm-xdsm)*.8
ypos:=(yusm-ydsm)*.8
if ((xusm-xdsm)>0)*((yusm-ydsm)>0)
Gui,1: Show , x%xdsm% y%ydsm% W%xpos% H%ypos%
SoundBeep 1000,1
if dlbrsm=d
goto loopdrlbsm
Gui, Destroy
