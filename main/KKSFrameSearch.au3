Func KKSFrameSearch($KKS = 123, $X = 650, $Y = 1715, $W = 890, $H = 65)
	sleep(300)
<<<<<<< HEAD
	$outsideXY = PixelSearch($X1, $Y, $X2, $Y, 0x000000, 100)
	$insideX = PixelSearch($outsideXY[0], $outsideXY[1], $outsideXY[0] + 9, $outsideXY[1], 0xFFFFFF, 50)
	$insideTopLeft = PixelSearch($insideX[0], $insideX[1] , $insideX[0], $insideX[1] - 30, 0x000000, 50)
	
	If Not @error Then

		MouseMove($insideTopLeft[0] + 10, $insideTopLeft[1] + 4, 5)
		MouseDown("left")
		MouseMove($insideTopLeft[0] + 375, $insideTopLeft[1] + 28, 5)
		MouseUp("left")
		Send("^x")
		Send("^t")
		WinWaitActive("Нанесение текста на изображение", "")
		ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
		Send("{DOWN 11}")
		MouseClick("left", 1000, 450, 10)
		Send("{HOME}")
		Send("+{END}")
		Send("{DELETE}")
		Send($KKS)
		Sleep(500)
		ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
		
	Else
		MsgBox(0, "Ошибка!", "Неудалось определить координаты")
	EndIf
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
	Send("^t")
	WinWaitActive("Нанесение текста на изображение", "")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
	Send("{DOWN 10}")
	MouseClick("left", 1000, 450, 10)
	Send("{END}")
	Send("+{HOME}")
	Send("{DELETE}")
	Send($KKS)
	ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
	
>>>>>>> 45a4b4e78145e7c6c63e8a453f784ba4bd911bdf
EndFunc

;KKSFrameSearch()