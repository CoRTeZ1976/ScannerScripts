;Func RotateCut($drawingNumb)

	$coord1  = PixelSearch(620, 100, 640, 125, 0x000000, 100)
	$coord2  = PixelSearch(1295, 100, 1275, 125, 0x000000, 100)
	$coord3  = PixelSearch(620, 1045, 650, 1020, 0x000000, 100)
	$coord4  = PixelSearch(1295, 1045, 1275, 1020, 0x000000, 100)

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
		$coord1  = PixelSearch(620, 100, 640, 125, 0x000000, 100)
		$coord2  = PixelSearch(1295, 100, 1275, 125, 0x000000, 100)
		$coord3  = PixelSearch(620, 1045, 650, 1020, 0x000000, 100)
		$coord4  = PixelSearch(1295, 1045, 1275, 1020, 0x000000, 100)
		MouseMove($coord1[0] - 1, $coord1[1] - 1)
		MouseDown("left")
		MouseMove($coord4[0] + 1, $coord4[1] + 1)
		MouseUp("left")
		Send("^y")
	Else
		MsgBox(0, "Ошибка!", "Неудалось определить координаты")
	EndIf

;EndFunc

