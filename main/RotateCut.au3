Func RotateCut($drawingNumb, $X11 = 622, $Y11 = 100, $X12 = 640, $Y12 = 125,  $X21 = 1295, $Y21 = 1045, $X22 = 1275, $Y22 = 1020)
	$coord1  = PixelSearch($X11, $Y11, $X12, $Y12, 0x000000, 100)
	$coord2  = PixelSearch($X21, $Y11, $X22, $Y12, 0x000000, 100)
	$coord3  = PixelSearch($X11, $Y21, $X12 + 10, $Y22, 0x000000, 100)
	$coord4  = PixelSearch($X21, $Y21, $X22, $Y22, 0x000000, 100)
	If Not @error Then
		$angle1 = $coord1[1] - $coord2[1]
		$angle2 = $coord1[0] - $coord3[0]
		If $angle1 > 0 Then
			$reqAngle = 0 - Tan(($coord2[1] - $coord1[1])/($coord1[0] - $coord2[0]))
			Send("^u")
			WinWaitActive('Rotate by angle', "")
			Send($reqAngle)
			Send("{ENTER}")
		ElseIf $angle1 < 0 Then
			$reqAngle = 0 + Tan(($coord2[1] - $coord1[1])/($coord1[0] - $coord2[0]))
			Send("^u")
			WinWaitActive('Rotate by angle', "")
			Send($reqAngle)
			Send("{ENTER}")
		EndIf
		
		WinWait('ТММ-3.'&$drawingNumb&' СБ.tif')
		$coord1  = PixelSearch($X11 - 2, $Y11, $X12, $Y12, 0x000000, 100)
		$coord2  = PixelSearch($X21, $Y11, $X22, $Y12, 0x000000, 100)
		$coord3  = PixelSearch($X11 -2 , $Y21, $X12 + 10, $Y22, 0x000000, 100)
		$coord4  = PixelSearch($X21, $Y21, $X22, $Y22, 0x000000, 100)
		MouseMove($coord1[0] - 1, $coord1[1] - 1)
		MouseDown("left")
		MouseMove($coord4[0] + 1, $coord4[1] + 1)
		MouseUp("left")
		Send("^y")
	Else
		MsgBox(0, "Ошибка!", "Неудалось определить координаты")
	EndIf
EndFunc