Func RotateCut($CurrDraw, $X11 = 625, $Y11 = 100, $X12 = 640, $Y12 = 125,  $X21 = 1295, $X22 = 1275, $W = 648, $H = 916)

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

		WinWait('ТММ-3.'&$CurrDraw&' СБ.tif')
		$coord1  = PixelSearch($X11 - 2, $Y11, $X12, $Y12, 0x000000, 100)
		$coord2  = PixelSearch($X21, $Y11, $X22, $Y12, 0x000000, 100)

		MouseMove($coord1[0] - 1, $coord1[1] - 1)
		MouseDown("left")
		MouseMove($coord1[0] + $W, $coord1[1] + $H)
		MouseUp("left")
		Send("^y")
	Else
		writeLog($CurrDraw, "внешней рамки")
	EndIf
EndFunc



;~ RotateCut(38548)