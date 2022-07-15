Func TT_ENG($CurrDraw, $CurrKKS, $CurrInvNo, $CurrDate)

	WinWait('ТММ-3.'&$CurrDraw&' СБ.tif')
	RotateCut($CurrDraw)

	;Длинный код ККС
	KKSFrameSearch($CurrDraw, $CurrKKS, 1290, 865, 1260)

	;№ чертежа
	DrawingNumFrameSearch($CurrDraw, 1287, 890, 1250, 370, 60)
	Send("{r 2}")
	DrawingNumFrameSearch($CurrDraw, 1239, 1000, 1220, 215, 40)
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
	Send("{DOWN 5}")
	ControlClick("Нанесение текста на изображение", "", "[CLASS:Button; TEXT:OK; INSTANCE:1]")

	;Инвентарный №
	Send("{r}")
	InvFrameSearch($CurrDraw, $CurrDate, $CurrInvNo)
	Send("{l}")

EndFunc

;TT_ENG(38552, "df23sd1f3sdf", 321321, 3212)