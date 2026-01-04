
                                         ⚓ WORLD OF WARSHIPS "STEALTH" ONE-CLICK LAUNCHER ⚓


This custom utility streamlines your World of Warships experience by:
1. Launching your wows-monitor and the Game simultaneously.
2. Automatically closing wows-monitor and Wargaming Game Center when you exit the game.

-------------------------------------------------------------------------------------------------------------------------------------
1. COMPATIBILITY & REQUIREMENTS
-------------------------------------------------------------------------------------------------------------------------------------

* VERSION: Designed ONLY for the Wargaming Game Center (WGC) version.
* STEAM: This will NOT work with the Steam version of the game without editing.
* ADMIN: No administrator privileges are required.

-------------------------------------------------------------------------------------------------------------------------------------
2. INSTALLATION (HOW TO FIND YOUR FOLDER)
-------------------------------------------------------------------------------------------------------------------------------------

1. Launch Wargaming Game Center through your World of Warships icon.
2. Make sure you are on the World of Warships tab.
3. Near the top, click "Game Settings 🛠️" and then select 
   "📁 Show in folder". This opens your game's root directory.
4. Copy "LaunchWoWS_Universal.ps1" and "Launch_WoWS.vbs" from this 
   archive into that folder. 
   (Note: They MUST be in the same folder as "wgc_api.exe")

-------------------------------------------------------------------------------------------------------------------------------------
3. UPDATING YOUR SHORTCUT
-------------------------------------------------------------------------------------------------------------------------------------

Now we point your existing desktop icon to the new launcher:
1. Inside your game folder, right-click "Launch_WoWS.vbs".
2. Select "Copy as path" (On Windows 11, it's near the top).
3. Go to your Desktop, right-click your World of Warships icon.
4. Select "Properties".
5. In the "Target" box, delete the old text and PASTE (Ctrl+V).
6. Click OK. 
   (The icon and name stay the same, but now it launches the "stealth" script!)

-------------------------------------------------------------------------------------------------------------------------------------
4. FIRST-TIME SETUP
-------------------------------------------------------------------------------------------------------------------------------------

The very first time you use your updated shortcut:
1. A "First Time Setup" window will appear. Click OK.
2. A file browser will open. Find and select your "wows-monitor.exe" or your Desktop icon for it.
   (Note: The default path, if you used the installer is "C:\Users\YourUserName\AppData\Local\Programs\wows-monitor\wows-monitor.exe")
3. The script will remember this for all future launches.

-------------------------------------------------------------------------------------------------------------------------------------
5. FEATURES & SAFETY
-------------------------------------------------------------------------------------------------------------------------------------

* STEALTH: The script opens in the background; no blue windows or consoles stay open.
* AUTO-CLEAN: Once you close the game, the script immediately kills 
  the monitor and the Wargaming Center to save system resources (with a few second delay).
* SAFETY TIMEOUT: If you click the shortcut but don't start the game 
  (e.g., you close WGC immediately), the script will wait 2 minutes 
  and then automatically shut down the monitor and itself.

-------------------------------------------------------------------------------------------------------------------------------------
6. TROUBLESHOOTING
-------------------------------------------------------------------------------------------------------------------------------------

* WRONG MONITOR: If you move your monitor, delete "monitor_path.txt" 
  in your game folder. It will ask for the location again next launch.
* MANUAL LAUNCH: If you launch via WGC manually, the auto-cleanup 
  will not trigger. You must use the desktop shortcut for the cleanup to work.

-------------------------------------------------------------------------------------------------------------------------------------
7. UNINSTALL
-------------------------------------------------------------------------------------------------------------------------------------

To revert to the original launcher:
1. Delete "Launch_WoWS.vbs", "LaunchWoWS_Universal.ps1", and 
   "monitor_path.txt" from your game folder.
2. Create a new shortcut from the Wargaming Center or point 
   your old shortcut back to "wgc_api.exe" in your game's folder.


                                                   FAIR WINDS AND FOLLOWING SEAS!

