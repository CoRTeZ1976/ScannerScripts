$FirstDrawing = 44718
$LastDrawing = 44718

;$count = $LastDrawing - $FirstDrawing
$count = 0

For $i = 0 to $count Step 1
	;$CurrDraw = $FirstDrawing + $i
	
		;WinActivate('ТММ-3.'&$CurrDraw&' СБ.tif ')
		WinActivate('InfranView')
		
		Sleep(50)
		Send("{PGDN}")
		Sleep(50)
		MouseMove(600, 820, 8)
		MouseDown("left")
		Sleep(50)
		MouseMove(920, 950, 8)
		MouseUp("left")
		Sleep(50)
		MouseMove(770, 870, 8)
		MouseClick("left")
		Sleep(50)
		MouseMove(426, 682, 8)
		MouseDown("left")
		Sleep(50)
		MouseMove(1731, 773, 8)
		MouseUp("left")
		Sleep(50)
		Send("^v")
		Sleep(50)
		Send("^s")
		WinWaitActive("Сохранение...", "")
		Send("{ENTER}")
		Sleep(50)
		Send("{LEFT 1}")
		Sleep(50)
		Send("{ENTER}")
		Sleep(150)
		
		;Send("^{PGDN}")
		MouseClick("left", 580, 60, 1, 1)
		
		Sleep(150)
		;WinActivate('ТММ-3.'&$CurrDraw&' СБ.tif ')
		
		MouseMove(600, 820, 8)
		MouseDown("left")
		Sleep(50)
		MouseMove(920, 950, 8)
		MouseUp("left")
		Sleep(50)
		MouseMove(770, 870, 8)
		MouseClick("left")
		Sleep(50)
		MouseMove(426, 682, 8)
		MouseDown("left")
		Sleep(50)
		MouseMove(1731, 776, 8)
		MouseUp("left")
		Sleep(50)
		Send("^v")
		Sleep(50)
		Send("^s")
		WinWaitActive("Сохранение...", "")
		Send("{ENTER}")
		Sleep(50)
		Send("{LEFT 1}")
		Sleep(50)
		Send("{ENTER}")
		
		;WinActivate('ТММ-3.'&$CurrDraw&' СБ.tif ')
		
		Send("{SPACE}")

Next
Exit