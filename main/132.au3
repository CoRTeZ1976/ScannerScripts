#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### 
$GODMODE = GUICreate("GODMODE", 335, 174, -1, -1)
$Header = GUICtrlCreateLabel("Header", 70, 15, 57, 24)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
$First = GUICtrlCreateLabel("First", 5, 50, 23, 17)
$txt1 = GUICtrlCreateLabel("First", 133, 50, 23, 17)
$FirstDraw = GUICtrlCreateInput("FirstDraw", 160, 50, 130, 21)
$Last = GUICtrlCreateLabel("Last", 5, 90, 24, 17)
$txt2 = GUICtrlCreateLabel("First", 133, 90, 23, 17)
$LastDraw = GUICtrlCreateInput("LastDraw", 160, 90, 130, 21)
$OK = GUICtrlCreateButton("OK", 52, 130, 100, 30)
$Cancel = GUICtrlCreateButton("Cancel", 180, 130, 100, 30)
$t = GUICtrlCreateLabel("First", 293, 50, 23, 17)
$Label2 = GUICtrlCreateLabel("First", 293, 90, 23, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd
