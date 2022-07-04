#include <Drawing.au3>
#include <NextDraw.au3>
#comments-start
#include <TT_RUS.au3>
#include <TT_ENG.au3>
#include <Specif_RUS.au3>
#include <Specif_ENG.au3>
#include <Save.au3>

#comments-end

Func Refactor($FirstDrawing, $LastDrawing, $KKS, $InvNo, $date)
	$count = $LastDrawing - $FirstDrawing
	For $i = 0 to $count Step 1
		$CurrDraw = $FirstDrawing + $i
		$CurrKKS = $KKS + $i
		$CurrInvNo = $InvNo + $i
		;Progress()
		;GUICtrlSetData($Progress, $i)
		WinActivate('ТММ-3.'&$CurrDraw&' СБ.tif ')
		Drawing($CurrDraw, $CurrKKS, $CurrInvNo, $date)
		;Save()
		;PageDown()
		;TT_RUS($CurrDraw, $CurrKKS, $CurrInvNo, $date)
		;Save()
		;PageDown()
		;TT_ENG($CurrDraw, $CurrKKS, $CurrInvNo, $date)
		;Save()
		;PageDown()
		;Specif_RUS($CurrDraw, $CurrKKS, $CurrInvNo, $date)
		;PageDown()
		;Save()
		;Specif_ENG($CurrDraw, $CurrKKS, $CurrInvNo, $date)
		;Save()
		If $i <> $count Then
			NextDraw()
		EndIf
	Next
	Exit
EndFunc

