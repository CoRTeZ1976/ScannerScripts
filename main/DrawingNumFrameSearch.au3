<<<<<<< HEAD
﻿Func DrawingNumFrameSearch($drawingNumb = 123, $X1 = 1290, $Y = 865, $X2 = 1250, $X3 = 370, $Y3 = 44)
	Sleep(300)
	$outsideXY = PixelSearch($X1, $Y, $X2, $Y, 0x000000, 100)
	;MsgBox(0, $outsideXY[0], $outsideXY[1])
	$insideX = PixelSearch($outsideXY[0], $outsideXY[1], $outsideXY[0] - 9, $outsideXY[1], 0xFFFFFF)
	;MsgBox(0, $insideX[0], $insideX[1])
	$insideTopRight = PixelSearch($insideX[0] - 1, $insideX[1] , $insideX[0] - 1, $insideX[1] - 30, 0x000000, 50)
		
	If Not @error Then
		MouseMove($insideTopRight[0] - 10, $insideTopRight[1] + 6, 10)
		MouseDown("left")
		MouseMove($insideTopRight[0] - $X3, $insideTopRight[1] + $Y3, 5)
		MouseUp("left")
		;#comments-start
		Send("^x")
		Send("^t")
		WinWaitActive("Нанесение текста на изображение", "")
		ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
		Send("{DOWN 10}")
		MouseClick("left", 1000, 450, 10)
		Send("{HOME}")
		Send("+{END}")
		Send("{DELETE}")
		Send("ТММ-3."&$drawingNumb&" СБ")
		ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
	Else
		MsgBox(0, "Ошибка!", "Неудалось определить координаты")
		;#comments-end
	EndIf
=======
﻿Func DrawingNumFrameSearch($drawingNumb = 123, $X = 650, $Y = 1790, $W = 890, $H = 102)
	Sleep(300)
	
	WinWaitActive("ТММ", "")
	Send("+c")
	WinWaitActive("Создание пользовательского выделения", "")
	Send("{TAB 3}")
	Send($X)
	Send("{TAB}")
	Send($Y)
	Send("{TAB}")
	Send($W)
	Send("{TAB}")
	Send($H)
	Send("{ENTER}")
	Send("^x")
	Send("^t")
	WinWaitActive("Нанесение текста на изображение", "")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
	Send("{DOWN 9}")
	MouseClick("left", 1000, 450, 10)
	Send("{END}")
	Send("+{HOME}")
	Send("{DELETE}")
	Send('ТММ-3.'&$drawingNumb&' СБ')
	ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
>>>>>>> 45a4b4e78145e7c6c63e8a453f784ba4bd911bdf
	
EndFunc

;DrawingNumFrameSearch()
