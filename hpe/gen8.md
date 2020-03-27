### enter shell in intelligent provision
ctrl+alt+d+b+x


-    Grab serial number off a G10 unit from ebay, then add it to your account as a "shared license".
-    Download the SPP Gen8.1 ISO <-- this is important, later versions do not include a CLI shell.
-    Burn the ISO to a 32GB or SMALLER usb drive using the HPE USB Boot Utility. Rufus doesn't work when you try to boot the utility, and the application doesn't support > 32GB USB drives.
-    REMOVE ALL PHYSICAL DRIVES PRIOR TO POWERING ON SERVER
-    Click on the Smart Storage Administrator, and clear the config off the controller. Exit out of the SSA Utility by clicking the X at the top.
-    If you have never updated the firmware on your controller, click on "Firmware Update" to launch HP SUM and do it now. You might need to reboot.
 -   Press Ctrl+Alt+D+B+X
 -   Type this in the console:      hpssacli controller slot=0 modify hbamode=on forced
    Get out of the console, and go back into the HPE SSA Utility
  -  Click on the controller, click on configure, click on configure controller
  -  select first option "Set all controller ports to HBA mode", click OK, click finish.
  -  Done! Power off, pluck in some fancy drives and off you go.



