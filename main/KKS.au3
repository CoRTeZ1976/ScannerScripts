#include <RotateCut.au3>
#include <DateFrameSearch.au3>
#include <InvFrameSearch.au3>

Func Drawing($drawingNumb, $KKS, $date, $InvNo)	

	WinWait('ТММ-3.'&$drawingNumb&' СБ.tif')
	RotateCut($drawingNumb)

	;Длинный код ККС
	MouseMove(897, 829, 0)
	MouseDown("left")
	MouseMove(1283, 855)
	MouseUp("left")
	#comments-start
	Send("^t")
	WinWaitActive("Нанесение текста на изображение", "")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
	Send("{DOWN 10}")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
	
	;№ чертежа
	MouseMove(1000, 865, 5)
	MouseDown("left")
	MouseMove(1200, 900)
	MouseUp("left")
	Send("^x")
	Send("^t")
	WinWaitActive("Нанесение текста на изображение", "")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
	Send("{DOWN 9}")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
	Send("{r 2}")
	Sleep(200)
	MouseMove(1017, 996, 1)
	MouseDown("left")
	MouseMove(1230, 1030)
	MouseUp("left")
	Send("^t")
	WinWaitActive("Нанесение текста на изображение", "")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
	Send("{r 2}")
	Sleep(200)
	
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
	InvFrameSearch($date, $InvNo)
	;Send("{l}")
	#comments-end
EndFunc