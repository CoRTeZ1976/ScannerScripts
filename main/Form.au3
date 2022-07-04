#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <Refactor.au3>

#Region ### START Koda GUI section ### Form=C:\Users\aa_shchendrygin\Desktop\dwgTemplate\SciTE4AutoIt3_Portable\test\main\GODMODE.kxf
$GODMODE = GUICreate("GODMODE", 360, 254, -1, -1)
$Header = GUICtrlCreateLabel("Введите исходные данные", 88, 16, 203, 23)
GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
$First = GUICtrlCreateLabel("Первый чертеж:", 5, 50, 130, 12)
$txt1 = GUICtrlCreateLabel("ТММ-3.", 170, 50, 40, 12)
$FirstDraw = GUICtrlCreateInput("", 208, 46, 120, 21)
$txt3 = GUICtrlCreateLabel("СБ", 333, 50, 25, 12)
$Last = GUICtrlCreateLabel("Последний чертеж:", 5, 80, 130, 12)
$txt2 = GUICtrlCreateLabel("ТММ-3.", 170, 80, 40, 12)
$LastDraw = GUICtrlCreateInput("", 208, 76, 120, 21)
$txt4 = GUICtrlCreateLabel("СБ", 333, 80, 25, 12)
$KKS = GUICtrlCreateInput("", 120, 106, 208, 21)
$Label1 = GUICtrlCreateLabel("Код KKS:", 5, 110, 70, 12)
$InvNo = GUICtrlCreateInput("", 200, 136, 129, 21)
$Label3 = GUICtrlCreateLabel("Инвентарный №:", 5, 140, 130, 12)
$OK = GUICtrlCreateButton("OK", 48, 208, 100, 30)
$Cancel = GUICtrlCreateButton("Cancel", 216, 208, 100, 30)
$date = GUICtrlCreateInput("", 200, 166, 129, 21)
$Label2 = GUICtrlCreateLabel("Дата:", 5, 170, 130, 12)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $OK
			$FirstDrawing = GUICtrlRead($FirstDraw)
			$LastDrawing = GUICtrlRead($LastDraw)
			$firstKKS = GUICtrlRead($KKS)
			$FirstInvNo = GUICtrlRead($InvNo)
			$date = GUICtrlRead($date)
			GUISetState(@SW_HIDE)
			Refactor($FirstDrawing, $LastDrawing, $firstKKS, $FirstInvNo, $date)
			Exit
		Case $Cancel
			Exit
		Case $GUI_EVENT_CLOSE
			Exit
	EndSwitch
WEnd
