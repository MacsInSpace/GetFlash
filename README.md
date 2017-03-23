# GetFlash
Gets the lastest Flash versions for Mac OS. Install and/or Import to Munki..
(npapi and ppapi)

Modified from, and Credit to:
rtrouton
https://github.com/rtrouton/rtrouton_scripts/tree/master/rtrouton_scripts/install_latest_adobe_flash_player
and cwaldrip
https://www.jamf.com/jamf-nation/discussions/7658/flash-update-script



Note: Set up as a *Launch Daemon.* Set to run daily. 
Setting up and Launch *Agent* fails to run the install (/usr/sbin/installer) portion.
