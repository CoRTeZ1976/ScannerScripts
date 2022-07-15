Func TT_RUS($CurrDraw, $CurrInvNo, $CurrDate)

	WinWait('ТММ-3.'&$CurrDraw&' СБ.tif')
	RotateCut($CurrDraw)
	;№ чертежа
	DrawingNumFrameSearch($CurrDraw)
	Send("{r 2}")
	DrawingNumFrameSearch($CurrDraw, 1240, 1000, 1220, 215, 40)
	Send("{r 2}")

	;ТТ
	MouseMove(688, 386)
	MouseDown("left")
	MouseMove(1275, 478)
	MouseUp("left")
	Send("^x")
	Send("^t")
	WinWaitActive("Нанесение текста на изображение", "")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:ComboBox; TEXT:; INSTANCE:1]")
	Send("{DOWN 6}")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")

	;Инвентарный №
	Send("{r}")
	InvFrameSearch($CurrDraw, $CurrDate, $CurrInvNo)
	Send("{l}")

EndFunc

;TT_RUS(38548, 123, "01")