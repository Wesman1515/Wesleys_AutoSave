SetWorkingDir, C:\Users\Gaming King\Documents\AHK_Scripts

loop

 {

   WinWaitActive, Adobe Premiere Pro						;Checks if Premiere Pro is active.

	Send, ^!s												; Sends Ctrl+Alt+S command.
	WinWaitActive, Save Project								;Checks if the save panel is active.
    ;FormatTime, CurrentDateTime,, yyyy_MMM_ddd_dd HH-mm	;Gets the date and time.
	FormatTime, CurrentDateTime,, yyyy_MM_dd_HHmm			;Gets the date and time.
    SendInput %CurrentDateTime%								;Pastes the date and time.
	sleep, 500												;Sleeps for 0.5 Seconds
	fileClick()												;Selects the autosave folder
	;SendInput {0}											;Presses 0 key to select the first folder starting with 0.
	SendInput {Enter}										;Enters the custom auto-save file directory
	sleep, 500												;Sleeps for 0.5 Seconds
	Loop, 5
	{
	SendInput {Tab}											;Tabs 5 times to select the save button
	}
	SendInput {Enter}										;Triggers the save button
	

   Sleep 180000												;waits 180 seconds

 }
 
 fileClick()
{
CoordMode Pixel, ;screen
CoordMode Mouse, screen

BlockInput, on
BlockInput, MouseMove
MouseGetPos xPosCursor, yPosCursor


effectControlsX = 50
effectControlsY = 100 ;the coordinates of roughly where my Effect Controls usually are located on the screen




ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, %A_WorkingDir%\File.png
if ErrorLevel = 2
	{
	ImageSearch, FoundX, FoundY, effectControlsX, effectControlsY, effectControlsX+400, effectControlsY+800, %A_WorkingDir%\File.png
	msgbox, "ErrorLevel 2A"
	}
if ErrorLevel = 1
	{
    ;tippy("NO CROP WAS FOUND")
	;YOU DO NOT NEED TIPPY() ... JUST DELETE IT FROM YOUR SCRIPT.
	;IT'S A DEBUGGING THING, DON'T WORRY ABOUT IT, LOL.
	msgbox, "ErrorLevel 1"
	goto resetcropper
	}
if ErrorLevel = 2
	{
    ;tippy("Could not conduct the crop search!")
	msgbox, "ErrorLevel 2"
	goto resetcropper
	}
if ErrorLevel = 0
	{
	MouseMove, FoundX+10, FoundY+10, 0 ;this moves the cursor onto the little square thingy.
	sleep 5
	click left
	}

resetcropper:
MouseMove, xPosCursor, yPosCursor, 0
blockinput, off
blockinput, MouseMoveOff
sleep 10

return
}