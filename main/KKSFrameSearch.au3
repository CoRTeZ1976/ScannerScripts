﻿Func KKSFrameSearch($KKS = 123, $X = 640, $Y = 1715, $W = 890, $H = 65)
	sleep(300)
	WinWaitActive("ТММ", "")
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
	Send("^x")
	Send("^t")
	WinWaitActive("Нанесение текста на изображение", "")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
	Send("{DOWN 10}")
	MouseClick("left", 1000, 450, 10)
	Send("{END}")
	Send("+{HOME}")
	Send("{DELETE}")
	Send($KKS)
	ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")
	
EndFunc

;KKSFrameSearch()