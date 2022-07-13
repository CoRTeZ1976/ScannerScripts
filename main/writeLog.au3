Func writeLog($text)
	$file = FileOpen("c:\Users\aa_shchendrygin\Desktop\dwgTemplate\SciTE4AutoIt3_Portable\test\main\log.txt", 1)

	If $file = -1 Then
		MsgBox(0, "Error", "Unable to open file.")
		Exit
	EndIf
	MsgBox(0, "", $file)
	FileWriteLine($file, $text & @CRLF)

	FileClose($file)
EndFunc

;writeLog("asdads")