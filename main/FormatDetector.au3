Func FormatDetector($CurrDraw)
		$statusBar = StatusbarGetText('ТММ-3.'&$CurrDraw&' СБ.tif ')
		Return StringLeft($statusBar, 4)
EndFunc

;FormatDetector(38549)