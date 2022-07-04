
Func Save()
	;Сохранение
	Send("^s")
	WinWaitActive("Сохранение...", "")
	Send("{ENTER}")
	Send("{LEFT 1}")
	Send("{ENTER}")
EndFunc

