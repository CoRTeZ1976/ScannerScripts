Func KKSFrameSearch($CurrDraw, $KKS = 123, $X1 = 1290, $Y = 830, $X2 = 1260)
	sleep(300)
	$outsideXY = PixelSearch($X1, $Y, $X2, $Y, 0x000000, 150)

	$insideX = PixelSearch($outsideXY[0] - 9, $outsideXY[1], $outsideXY[0], $outsideXY[1], 0xFFFFFF, 150)

	$insideTopRight = PixelSearch($insideX[0], $insideX[1] , $insideX[0], $insideX[1] + 30, 0x000000, 50)

	If Not @error Then

		MouseMove($insideTopRight[0] - 1, $insideTopRight[1] - 4, 5)
		MouseDown("left")
		MouseMove($insideTopRight[0] - 375, $insideTopRight[1] - 29, 5)
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
		writeLog($CurrDraw, "кода KKS")
	EndIf

EndFunc

;KKSFrameSearch(123, 1290, 865, 1260)