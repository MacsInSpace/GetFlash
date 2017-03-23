# GetFlash<br>
Gets the lastest Flash versions for Mac OS. Install and/or Import to Munki..
(npapi *and* ppapi)<br>
<br>
Modified from, and Credit to:<br>
rtrouton<br>
https://github.com/rtrouton/rtrouton_scripts/tree/master/rtrouton_scripts/install_latest_adobe_flash_player<br>
and cwaldrip<br>
https://www.jamf.com/jamf-nation/discussions/7658/flash-update-script<br>
<br>
<br>
Note: Set up as a *Launch Daemon.* Set to run daily/weekly.<br>
      Set the two to launch 5 minutes apart. Do not set them to run at the same time due to possible mount point conflicts (untested)<br>
      Setting up and Launch *Agent* fails to run the install (/usr/sbin/installer) portion. <br>
      Ref: https://www.jamf.com/jamf-nation/discussions/8131/launch-agent-help<br>
