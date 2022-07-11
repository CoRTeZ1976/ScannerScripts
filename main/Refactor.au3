#include <Drawing.au3>
#include <NextDraw.au3>
#include <Save.au3>
#include <Array.au3>
#include <NextPage.au3>
#include <TT_RUS.au3>
;~ #include <TT_ENG.au3>
;~ #include <Specif_RUS.au3>
;~ #include <Specif_ENG.au3>




Func KKSCount($CurrKKS)
	$count = Number(StringRight($CurrKKS, 3))
	;MsgBox (0, "", $count)
	$count += 1
	;MsgBox (0, "", $count)
	$start = StringLen($CurrKKS)
	Return StringReplace($CurrKKS, $start - 2, $count)
EndFunc

Func Refactor($props)
	$count = $props[1] - $props[0]
	$CurrDraw = $props[0]
	$CurrKKS = $props[2]
	$CurrInvNo = $props[3]
	$CurrDate = $props[4]
	For $i = 0 to $count Step 1
		;MsgBox(0, "", $CurrDraw &", "& $CurrKKS &", " & $InvNo)
		WinActivate('ТММ-3.'&$CurrDraw&' СБ.tif ')
		;Drawing($CurrDraw, $CurrKKS, $CurrInvNo, $CurrDate)
		;Save()
		NextPage()
		TT_RUS($CurrDraw, $CurrInvNo, $CurrDate)
		;Save()
		;NextPage()
		;TT_ENG($CurrDraw, $CurrKKS, $CurrInvNo, $CurrDate)
		;Save()
		;NextPage()
		;Specif_RUS($CurrDraw, $CurrKKS, $CurrInvNo, $CurrDate)
		;NextPage()
		;Save()
		;Specif_ENG($CurrDraw, $CurrKKS, $CurrInvNo, $CurrDate)
		;Save()
		$CurrDraw += 1
		$CurrKKS = KKSCount($CurrKKS)
		$CurrInvNo += 1
		;Sleep(20)
		If $i <> $count Then
			NextDraw()
		EndIf
	Next
	Exit
EndFunc