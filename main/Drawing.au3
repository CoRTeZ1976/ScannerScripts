#include <RotateCut.au3>
#include <DateFrameSearch.au3>
#include <InvFrameSearch.au3>
#include <KKSFrameSearch.au3>
#include <DrawingNumFrameSearch.au3>

Func Drawing($CurrDraw, $CurrKKS, $date, $CurrInvNo)	

	WinWait('ТММ-3.'&$CurrDraw&' СБ.tif')
	RotateCut($CurrDraw)
	
	
	DrawingNumFrameSearch($CurrDraw)
	Send("{r 2}")
	DrawingNumFrameSearch($CurrDraw, 1220, 1000, 1245)
	Send("{r 2}")
	
	;Длинный код ККС
	KKSFrameSearch($CurrKKS)
	
	#comments-start
	;дата в штампе
	MouseMove(570, 800, 1)
	MouseDown("left")
	MouseMove(940, 1076, 5)
	MouseUp("left")
	MouseMove(800, 900, 1)
	MouseClick("left")
	MouseWheel("down", 10)
	DateFrameSearch($date)
	
	;Инвентарный №
	;Дата(подпись)
	Send("{r}")
	InvFrameSearch($date, $CurrInvNo)
	Send("{l}")
	#comments-end
EndFunc