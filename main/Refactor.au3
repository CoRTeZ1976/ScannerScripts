#include <Drawing.au3>
#include <NextDraw.au3>
#comments-start
#include <TT_RUS.au3>
#include <TT_ENG.au3>
#include <Specif_RUS.au3>
#include <Specif_ENG.au3>
#include <Save.au3>

#comments-end

Func KKSCount($CurrKKS)
	$count = Number(StringRight($KKS, 3))
	;MsgBox (0, "", $count)
	$count += 1
	;MsgBox (0, "", $count)
	$start = StringLen($KKS)
	Return StringReplace($KKS, $start - 2, $count)
EndFunc

Func Refactor($FirstDrawing, $LastDrawing, $KKS, $InvNo, $date)
	$count = $LastDrawing - $FirstDrawing
	$CurrDraw = $FirstDrawing
	$CurrInvNo = $InvNo
	$CurrKKS = $KKS
	For $i = 0 to $count Step 1
		MsgBox(0, "", $CurrDraw &", "& $CurrKKS &", " & $InvNo)
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
		$CurrDraw += 1
		$CurrKKS = KKSCount($CurrKKS)
		$CurrInvNo += 1
		If $i <> $count Then
			NextDraw()
		EndIf
	Next
	Exit
EndFunc

