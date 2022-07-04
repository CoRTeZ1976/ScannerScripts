;Func FrameSearch($X1, $Y, $X2)

	$outsideXY = PixelSearch($X1, $Y, $X2, $Y, 0x000000)
	$insideX = PixelSearch($outsideXY[0], $outsideXY[1], $outsideXY[0] + 9, $outsideXY[1], 0xFFFFFF)
	$insideTopLeft = PixelSearch($insideX[0], $insideX[1] - 30, $insideX[0], $insideX[1], 0x000000, 2)

	$insideRightXY = PixelSearch($insideX[0], $isnideX[1], $insideX[0] + 200, $isnideX[1], 0x000000, 2)
	MouseMove($insideRightXY[0], $insideRightXY[1])

	If Not @error Then
			
		MouseMove($insideTopLeft[0] - 1, $insideTopLeft[1] + 3, 10)
		MouseDown("left")
		MouseMove($insideTopLeft[0] + 112, $insideTopLeft[1] + 120, 10)
		MouseUp("left")
		;Send("^x")

		MouseMove($insideTopLeft[0] - 1, $insideTopLeft[1] - 121, 10)
		MouseDown("left")
		MouseMove($insideTopLeft[0] + 112, $insideTopLeft[1] - 3, 10)
		MouseUp("left")
		;Send("^x")
		
		MouseMove($insideTopLeft[0] - 1, $insideTopLeft[1] - 242, 10)
		MouseDown("left")
		MouseMove($insideTopLeft[0] + 113, $insideTopLeft[1] - 128, 10)
		MouseUp("left")
		;Send("^x")
	Else
		MsgBox(0, "Ошибка!", "Неудалось определить координаты")
	EndIf
;EndFunc