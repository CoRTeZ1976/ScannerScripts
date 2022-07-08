Func DateFrameSearch($date = "0", $X = 571, $Y = 1981, $W = 70, $H = 69)
	sleep(300)
<<<<<<< HEAD
	$outsideXY = PixelSearch($X1, $Y, $X2, $Y, 0x000000, 150)
	$insideX = PixelSearch($outsideXY[0], $outsideXY[1], $outsideXY[0] + 9, $outsideXY[1], 0xFFFFFF, 150)
	$insideTopLeft = PixelSearch($insideX[0] + 1, $insideX[1] - 30, $insideX[0], $insideX[1], 0x000000, 150)
	$insideRightXY = PixelSearch($insideX[0], $insideX[1], $insideX[0] + 200, $insideX[1], 0x000000, 150)
	$insideBottomRightXY = PixelSearch($insideRightXY[0] - 1, $insideRightXY[1] + 50, $insideRightXY[0] - 1, $insideRightXY[1] + 200, 0x000000, 150)

	If Not @error Then
			;#comments-start
		MouseMove($insideTopLeft[0], $insideTopLeft[1] - 13, 5)
		MouseDown("left")
		MouseMove($insideBottomRightXY[0], $insideBottomRightXY[1], 5)
		MouseUp("left")
		Send("^x")
		MouseClick("left", $insideTopLeft[0] - 20, $insideTopLeft[1] + 20)
		MouseMove($insideTopLeft[0], $insideTopLeft[1] + 20, 5)
		MouseDown("left")
		MouseMove($insideBottomRightXY[0], $insideBottomRightXY[1], 5)
		MouseUp("left")
		
		Send("^t")
		WinWaitActive("Нанесение текста на изображение", "")
		ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
		Send("{DOWN 9}")
		MouseClick("left", 1000, 450, 10)
		Send("{END}")
		Send("+{HOME}")
		Send("{DELETE}")
		Send($date)
		ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
		;#comments-end
		;#comments-start
		MouseMove($insideTopLeft[0], $insideTopLeft[1] - 135, 5)
		MouseDown("left")
		MouseMove($insideTopLeft[0] + 113, $insideTopLeft[1] - 20, 5)
		MouseUp("left")
		Send("^x")
		MouseClick("left", $insideTopLeft[0] - 20, $insideTopLeft[1] - 102)
		MouseMove($insideTopLeft[0], $insideTopLeft[1] - 102, 5)
		MouseDown("left")
		MouseMove($insideBottomRightXY[0], $insideBottomRightXY[1] - 122, 5)
		MouseUp("left")
		
		Send("^t")
		WinWaitActive("Нанесение текста на изображение", "")
		ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
		;#comments-end
		MouseMove($insideTopLeft[0], $insideTopLeft[1] - 247, 5)
		MouseDown("left")
		MouseMove($insideTopLeft[0] + 114, $insideTopLeft[1] - 140, 5)
		MouseUp("left")
		Send("^x")
		MouseClick("left", $insideTopLeft[0] - 20, $insideTopLeft[1] - 230)
		MouseMove($insideTopLeft[0], $insideTopLeft[1] - 230, 5)
		MouseDown("left")
		MouseMove($insideTopLeft[0] + 114, $insideTopLeft[1] - 140, 5)
		MouseUp("left")
		;#comments-start
		Send("^t")
		WinWaitActive("Нанесение текста на изображение", "")
		ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
		;#comments-end
	Else
		MsgBox(0, "Ошибка!", "Неудалось определить координаты")
	EndIf

EndFunc

DateFrameSearch()
=======
	
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
	
	Send("+c")
	WinWaitActive("Создание пользовательского выделения", "")
	Send("{TAB 3}")
	Send($X)
	Send("{TAB}")
	Send($Y + 15)
	Send("{TAB}")
	Send($W)
	Send("{TAB}")
	Send($H - 15)
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
	Send($date)
	ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
	
EndFunc

;DateFrameSearch()
>>>>>>> 45a4b4e78145e7c6c63e8a453f784ba4bd911bdf
