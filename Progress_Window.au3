#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Func Progress_window()
	#Region ### START Koda GUI section ### Form=C:\Users\aa_shchendrygin\Desktop\dwgTemplate\SciTE4AutoIt3_Portable\test\Progress.kxf
	$Progress = GUICreate("Progress", 301, 143, -1, -1)
	$Progress1 = GUICtrlCreateProgress(25, 80, 250, 20)
	$Label1 = GUICtrlCreateLabel("Label1", 25, 30, 250, 30)
	GUISetState(@SW_SHOW)
	#EndRegion ### END Koda GUI section ###

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE
				ExitLoop
		EndSwitch
	WEnd

EndFunc
