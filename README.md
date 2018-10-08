# Wesleys_AutoSave
This is a Auto Hot Key script that saves a copy of your premiere pro project to an auto-save folder.

## rd-20181009
Realease Oct 09, 2018.
Added comments to each command describing what they do.

## rd-20181008
This is the first working version of the script. In it's current state it is very specific to how my workspace is set up.

### How It Works
The script checks to see if premiere pro is the active window. If it is, then it exacutes the shortcut for "Save as copy" in premiere pro, pastes in the date, and time into the name bar. Then it exacutes several tab commands till it selects a folder that satrts with "0". I've set this up so it will select the first or last (depending on how you have sort by name set up) folder in the project directory. I have a folder in my template labeled "000_Wesleys_Auto-Saves". The script navigates to this folder and then opens it, and saves itself in it, and then sleeps for about 3 minutes, then it repeats the proccess. The script will only exacute if premiere pro is the active window. Right now if the timer goes out, the script with activate as soon as you click back into premiere.
***
#### Possible Bugs
This version is very untested as of 10/08/2018. 

Possible Bugs Include:
* Unconfirmed - Pressing a modifier key at the same time as the script activating could lead to unwanted hot keys activating.
* Unconfirmed - Trying to preform a heavey proccessing action at the same moment of the scipt activating could cause a crash.
*
*
***
#### Possible features
These are a few features I would like to try to add to the script in the future.

Possible features include:
* detecting if the auto save folder excists in the file directory, and creating it if it doesn't.
* Deleting older saves that are no longer needed.
* Working in all Adobe Products.
* Creating a Save-As when you close premiere, and then copying the auto saves files to another folder.

***
Please let me know if this script helps you out any, and please feel free costimize and add to the script. Let me know what you do and if you make the script better. I am a very new coder and i'm sure there is a much better way to do this. 
