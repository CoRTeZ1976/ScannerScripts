#include "Drawing.au3"
#include "TT_RUS.au3"
#include "TT_ENG.au3"
#include "Specif_RUS.au3"
#include "Specif_ENG.au3"
#include "Save.au3"
#include "NextDraw.au3"

Func Refactor($FirstDrawing, $LastDrawing)
	$count = $LastDrawing - $FirstDrawing
	For $i = 0 to $count Step 1
		$CurrDraw = $FirstDrawing + $i
		;Progress()
		;GUICtrlSetData($Progress, $i)
		;WinActivate('ТММ-3.'&$CurrDraw&' СБ.tif ')
		Drawing($CurrDraw)
		;Save()
		;PageDown()
		;TT_RUS($CurrDraw)
		;Save()
		;PageDown()
		;TT_ENG($CurrDraw)
		;Save()
		;PageDown()
		;Specif_RUS($CurrDraw)
		;PageDown()
		;Save()
		;Specif_ENG($CurrDraw)
		;Save()
		;NextDraw()
	Next
	Exit
EndFunc
