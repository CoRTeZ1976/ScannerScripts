Func DateFrameSearch($date = "0", $X1 = 1050, $Y = 865, $X2 = 1020)
	sleep(300)
	$outsideXY = PixelSearch($X1, $Y, $X2, $Y, 0x000000, 150)
	$insideX = PixelSearch($outsideXY[0] - 9, $outsideXY[1], $outsideXY[0], $outsideXY[1], 0xFFFFFF, 150)
	$insideTopRight = PixelSearch($insideX[0] + 1, $insideX[1] - 30, $insideX[0], $insideX[1], 0x000000, 50)
	;MsgBox(0, $insideTopRight[0], $insideTopRight[1])

	If Not @error Then
		;#comments-start
		MouseMove($insideTopRight[0] - 110, $insideTopRight[1] + 5, 5)
		MouseDown("left")
		MouseMove($insideTopRight[0], $insideTopRight[1] + 120, 5)
		MouseUp("left")

		Send("^x")

		MouseClick("left", $insideTopRight[0] - 130, $insideTopRight[1] + 30)

		MouseMove($insideTopRight[0] - 110, $insideTopRight[1] + 30, 5)
		MouseDown("left")
		MouseMove($insideTopRight[0], $insideTopRight[1] + 120, 5)
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
		MouseMove($insideTopRight[0] - 110, $insideTopRight[1] - 115, 5)
		MouseDown("left")
		MouseMove($insideTopRight[0], $insideTopRight[1] - 1, 5)
		MouseUp("left")

		Send("^x")
		MouseClick("left", $insideTopRight[0] - 130, $insideTopRight[1] - 95)

		MouseMove($insideTopRight[0] - 110, $insideTopRight[1] - 95, 5)
		MouseDown("left")
		MouseMove($insideTopRight[0], $insideTopRight[1] - 1, 5)
		MouseUp("left")

		Send("^t")
		WinWaitActive("Нанесение текста на изображение", "")
		ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")

		;#comments-end
		MouseMove($insideTopRight[0] - 110, $insideTopRight[1] - 235, 5)
		MouseDown("left")
		MouseMove($insideTopRight[0], $insideTopRight[1] - 125, 5)
		MouseUp("left")

		Send("^x")

		MouseClick("left", $insideTopRight[0] - 130, $insideTopRight[1] - 220)

		MouseMove($insideTopRight[0] - 110, $insideTopRight[1] - 220, 5)
		MouseDown("left")
		MouseMove($insideTopRight[0], $insideTopRight[1] - 125, 5)
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

;DateFrameSearch()
