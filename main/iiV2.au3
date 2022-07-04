$FirstDrawing = 44718
$LastDrawing = 44718

;$count = $LastDrawing - $FirstDrawing
$count = 45

For $i = 0 to $count Step 1
	;$CurrDraw = $FirstDrawing + $i
	
		WinActivate('ТММ-3.')
		;WinActivate('InfranView')
		
		Sleep(50)
		Send("{PGDN}")
		
		Send("+c")
		Sleep(50)
		Send("{ENTER}")
		
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
		
		Sleep(50)
		Send("{PGDN}")
		
		Send("+c")
		Sleep(50)
		Send("{ENTER}")
		
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
		
		Send("{SPACE}")

Next
Exit