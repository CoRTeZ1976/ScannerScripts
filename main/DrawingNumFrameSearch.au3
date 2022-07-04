﻿Func DrawingNumFrameSearch($drawingNumb = 123, $X1 = 1290, $Y = 865, $X2 = 1250)
	sleep(300)
	$outsideXY = PixelSearch($X1, $Y, $X2, $Y, 0x000000)
	$insideX = PixelSearch($outsideXY[0], $outsideXY[1], $outsideXY[0] - 9, $outsideXY[1], 0xFFFFFF, 50)
	$insideTopRight = PixelSearch($insideX[0] - 1, $insideX[1] , $insideX[0] - 1, $insideX[1] - 30, 0x000000, 50)
	$insideTopLeft = PixelSearch($insideTopRight[0], $insideTopRight[1] +1 , $insideTopRight[0] - 420, $insideTopRight[1] - 1, 0x000000, 50)
	$insideLeftBottom = PixelSearch($insideTopLeft[0] + 3, $insideTopLeft[1] + 4, $insideTopLeft[0] + 3, $insideTopLeft[1] + 70, 0x000000, 50)
	
	If Not @error Then
		MouseMove($insideTopLeft[0] + 2, $insideTopLeft[1] + 1, 5)
		MouseDown("left")
		MouseMove($insideTopRight[0] + 1, $insideLeftBottom[1] - 1, 5)
		MouseUp("left")
		
		Send("^x")
		
		MouseMove($insideTopLeft[0] - 40, $insideTopLeft[1] + 10, 5)
		Sleep(300)
		MouseClick("left")
		
		MouseMove($insideTopLeft[0] + 2, $insideTopLeft[1] + 10, 5)
		MouseDown("left")
		MouseMove($insideTopRight[0] + 1, $insideLeftBottom[1] - 1, 5)
		MouseUp("left")
		
		Send("^t")
		WinWaitActive("Нанесение текста на изображение", "")
		ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
		Send("{DOWN 9}")
		MouseClick("left", 1000, 450, 10)
		Sleep(50)
		Send("+{HOME}")
		Sleep(50)
		Send($drawingNumb)
		ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")

	Else
		MsgBox(0, "Ошибка!", "Неудалось определить координаты")
	EndIf
EndFunc

;DrawingNumFrameSearch()
