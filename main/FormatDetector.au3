Func FormatDetector($CurrDraw)
		$statusBar = StatusbarGetText('ТММ-3.'&$CurrDraw&' СБ.tif ')
		;MsgBox(0, "", $statusBar)
		Return StringLeft($statusBar, 4)
		;MsgBox(0, "", $format)
EndFunc

;FormatDetector(38549)