HotKeySet("{END}", "quit")
HotKeySet("{Home}", "start")
HotKeySet("{TAB}", "pozitie")
HotKeySet("{F3}", "pauseZ")


Global $Xx = 1920
Global $Yy = 0
Global $mX = 0
Global $mY = 0


While 1
   Sleep(1000)
WEnd


Func start()
   SetDelay()
   While 1
	  ClickShard()
	  SkipShard()
   WEnd
EndFunc


Func pauseZ()
   While 1
	  Sleep(10000)
   WEnd
EndFunc


Func quit()
   Exit 0
EndFunc


Func pozitie()
	Local $aPos = MouseGetPos()
	ToolTip('X: ' & $aPos[0] - $Xx & ', Y: ' & $aPos[1] - $Yy)
EndFunc


Func SetDelay()
   ;;;; Set Delay
   AutoItSetOption("MouseClickDelay", 100)
   AutoItSetOption("MouseClickDownDelay", 100)
EndFunc


Func ClickShard()
   ;;;; Menu Chests
   getPOZ()
   MouseClick("left", $Xx + 300, $Yy + 475, 1, 0)
   setPOZ()
   Sleep(2500)

   ;;;; Click War Splinter
   getPOZ()
   MouseClick("left", $Xx + 1020, $Yy + 515, 1, 0)
   setPOZ()
   Sleep(2500)
EndFunc


Func SkipShard()
   ;;;; Click Skipp
   getPOZ()
   MouseClick("left", $Xx + 305, $Yy + 525, 1, 0)
   setPOZ()
   Sleep(2500)

   ;;;; Click Yes
   getPOZ()
   MouseClick("left", $Xx + 715, $Yy + 480, 1, 0)
   setPOZ()
   Sleep(2500)

   ;;;; Click Collect
   getPOZ()
   MouseClick("left", $Xx + 300, $Yy + 490, 1, 0)
   setPOZ()
   Sleep(2500)
EndFunc


Func getPOZ()
   ;;;; Save mouse coords
   Local $aPos = MouseGetPos()

   $mX = $aPos[0]
   $mY = $aPos[1]
EndFunc


Func setPOZ()
   ;;;; Move mouse where it was
   MouseMove($mX, $mY, 0)
EndFunc