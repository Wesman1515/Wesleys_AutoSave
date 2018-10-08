loop

 {

   WinWaitActive, Adobe Premiere Pro						;Checks if Premiere Pro is active.

	Send, ^!s												; Sends Ctrl+Alt+S command.
    FormatTime, CurrentDateTime,, yyyy_MMM_ddd_dd HH-mm		;Gets the date and time.
    SendInput %CurrentDateTime%								;Pastes the date and time.
	Loop, 10
	{
	SendInput {Tab}											;Tabs 10 times to get into the file directory window.
	}	
	SendInput {0}											;Presses 0 key to select the first folder starting with 0.
	Loop, 2
	{
	SendInput {Enter}										;Enters the custom auto-save file directory
	}
	Loop, 5
	{
	SendInput {Tab}											;Tabs 5 times to select the save button
	}
	SendInput {Enter}										;Triggers the save button
	

   Sleep 180000												;waits 180 seconds

 }