Dim $title = $CmdLine[1]
Dim $filename = $CmdLine[2]

If $title <> "" Then
    WinWait($title)
    If Not WinActive($title) Then WinActivate($title)
    WinWaitActive($title)
    WinSetState($title, "", @SW_MAXIMIZE)
EndIf

Send("^!{PRINTSCREEN}")
Sleep(5000)
MouseClick("primary", 400, 400)

WinWait("Save As")
If Not WinActive("Save As") Then WinActivate("Save As")
WinWaitActive("Save As")

Send($filename)
Send("{ENTER}")
