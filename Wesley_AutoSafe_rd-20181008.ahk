loop

 {

   WinWaitActive, Adobe Premiere Pro

	Send, ^!s
    FormatTime, CurrentDateTime,, yyyy_MMM_ddd_dd HH-mm
    SendInput %CurrentDateTime%
	Loop, 10
	{
	SendInput {Tab}
	}	
	SendInput {0}
	Loop, 2
	{
	SendInput {Enter}
	}
	Loop, 5
	{
	SendInput {Tab}
	}
	SendInput {Enter}
	

   Sleep 180000

 }
