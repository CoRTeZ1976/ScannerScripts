#include <RotateCut.au3>
#include <DateFrameSearch.au3>
#include <InvFrameSearch.au3>
#include <KKSFrameSearch.au3>
#include <DrawingNumFrameSearch.au3>
#include <FormatDetector.au3>

Func Drawing($CurrDraw, $CurrKKS, $CurrInvNo, $CurrDate)
	WinWait('ТММ-3.'&$CurrDraw&' СБ.tif')
	$format = FormatDetector($CurrDraw)
	If $format == "1654" Then
		RotateCut($CurrDraw)
		;Длинный код ККС
		KKSFrameSearch($CurrDraw, $CurrKKS)
		;№ Чертежа
		DrawingNumFrameSearch($CurrDraw)
		Send("{r 2}")
		DrawingNumFrameSearch($CurrDraw, 1243, 1000, 1220, 215, 40)
		Send("{r 2}")

;~ 		Sleep(50)
;~ 		MouseMove(570, 800, 1)
;~ 		MouseDown("left")
;~ 		MouseMove(940, 1076, 5)
;~ 		MouseUp("left")
;~ 		MouseMove(800, 900, 1)
;~ 		MouseClick("left")
;~ 		MouseWheel("down", 10)
;~ 		;дата в штампе
;~ 		DateFrameSearch($CurrDate)
;~ 		DateFrameSearch($CurrDate, 571, 2055, 70)
;~ 		DateFrameSearch($CurrDate, 571, 2131, 70)

		;Инвентарный №
		;Дата(подпись)
		Send("{r}")
		InvFrameSearch($CurrDraw, $CurrDate, $CurrInvNo)
		Send("{l}")
	ElseIf $format == "3310" Then
;~ 		RotateCut($CurrDraw, 280, 90, 310, 110, 1625, 1040, 1605, 1020)

;~ 		;№ Чертежа
;~ 		DrawingNumFrameSearch($CurrDraw, 1630, 870, 1610)
;~ 		Send("{r 2}")
;~ 		DrawingNumFrameSearch($CurrDraw, 1560, 995, 1580)

;~ 		Send("{r 2}")

;~ 		;Длинный код ККС
;~ 		KKSFrameSearch($CurrKKS, 1220, 830, 1250)
		#comments-start

		;дата в штампе
		DateFrameSearch($CurrDate)

		;Инвентарный №
		;Дата(подпись)
		Send("{r}")
		InvFrameSearch($CurrDate, $CurrInvNo)
		Send("{l}")
		#comments-end
	EndIf

EndFunc