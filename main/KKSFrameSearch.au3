Func KKSFrameSearch($KKS = 123, $X1 = 880, $Y = 830, $X2 = 910)
	sleep(300)
	$outsideXY = PixelSearch($X1, $Y, $X2, $Y, 0x000000)
	$insideX = PixelSearch($outsideXY[0], $outsideXY[1], $outsideXY[0] + 9, $outsideXY[1], 0xFFFFFF, 50)
	$insideTopLeft = PixelSearch($insideX[0], $insideX[1] , $insideX[0], $insideX[1] - 30, 0x000000, 50)
	$insideTopRight = PixelSearch($insideTopLeft[0], $insideTopLeft[1] +1 , $insideTopLeft[0] + 400, $insideTopLeft[1] - 1, 0x000000, 50)
	
	If Not @error Then
		
		MouseMove($insideTopLeft[0], $insideTopLeft[1] + 2, 5)
		MouseDown("left")
		MouseMove($insideTopRight[0] , $insideTopRight[1] + 30, 5)
		MouseUp("left")
		Send("^x")
		Send("^t")
		WinWaitActive("Нанесение текста на изображение", "")
		ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
		Send("{DOWN 10}")
		MouseClick("left", 1000, 450, 10)
		Send("^a")
		Send($KKS)
		ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
	Else
		MsgBox(0, "Ошибка!", "Неудалось определить координаты")
	EndIf
EndFunc

;KKSFrameSearch()