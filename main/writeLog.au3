#include <File.au3>

Func writeLog($drawingNumb, $location)
	$file = FileOpen("log.txt", 1)

	If $file = -1 Then
		MsgBox(0, "Error", "Unable to open file.")
		Exit
	EndIf

	FileWriteLine($file, 'Не удалось определить координаты '&$location&' в файле ТММ-3.'&$drawingNumb&' СБ')

	FileClose($file)
EndFunc

;~ writeLog(132, "№ чертежа")