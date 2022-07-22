Func RotateCut($drawingNumb, $X11 = 625, $Y11 = 100, $X12 = 640, $Y12 = 125,  $X21 = 1295, $Y21 = 1045, $X22 = 1275, $Y22 = 1020, $X = 41, $Y = 50, $W = 1584, $H = 2244)
	WinWaitActive("ТММ", "")

	$coord1  = PixelSearch($X11, $Y11, $X12, $Y12, 0x000000, 100)
	$coord2  = PixelSearch($X21, $Y11, $X22, $Y12, 0x000000, 100)

	If Not @error Then
		$angle1 = $coord1[1] - $coord2[1]
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
		Send("^y")
	Else
		MsgBox(0, "Ошибка!", "Неудалось определить координаты")
	EndIf
EndFunc



;~ RotateCut(38548)