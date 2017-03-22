#!/bin/bash

 # Get the version number of the currently-installed Flash Player, if any.
    latestver=`/usr/bin/curl -sS http://fpdownload2.macromedia.com/get/flashplayer/update/current/xml/version_en_mac_pl.xml | xmllint --format - | awk -F'"' '/update version/{print $2}' | sed 's/,/./g'`

if [ -e /Library/Internet\ Plug-Ins/Flash\ Player.plugin/Contents/Info.plist ];then
        currentinstalledNPAPI=`/usr/bin/defaults read /Library/Internet\ Plug-Ins/Flash\ Player.plugin/Contents/Info.plist CFBundleShortVersionString`
    else
        currentinstalledNPAPI="0"
    fi
    
if [ -e /Library/Internet\ Plug-Ins/PepperFlashPlayer/PepperFlashPlayer.plugin/Contents/Info.plist ];then
        currentinstalledPPAPI=`/usr/bin/defaults read /Library/Internet\ Plug-Ins/PepperFlashPlayer/PepperFlashPlayer.plugin/Contents/Info.plist CFBundleShortVersionString`
    else
        currentinstalledPPAPI="0"
    fi
    
    if [ "${currentinstalledNPAPI}" != "${latestver}" ]; then
       
       #Install...
       
        newlyinstalledNPAPI=`/usr/bin/defaults read "/Library/Internet Plug-Ins/Flash Player.plugin/Contents/version" CFBundleShortVersionString`
        if [ "${latestver}" = "${newlyinstalledNPAPI}" ]; then
            /bin/echo "`date`: SUCCESS: NPAPI Flash has been updated to version ${newlyinstalledNPAPI}" >>
        else
            /bin/echo "`date`: ERROR: NPAPI Flash update unsuccessful, version remains at ${currentinstalledNPAPI}."
        fi
    # If Flash is up to date already, just log it and exit.
    else
        /bin/echo "`date`: Flash NPAPI is already up to date, running ${currentinstalledNPAPI}." >> ${logfile}
       
    fi
    
    
    if [ "${currentinstalledPPAPI}" != "${latestver}" ]; then
       
       #Install...
       
        newlyinstalledPPAPI=`/usr/bin/defaults read /Library/Internet\ Plug-Ins/PepperFlashPlayer/PepperFlashPlayer.plugin/Contents/Info.plist CFBundleShortVersionString`
        if [ "${latestver}" = "${newlyinstalledPPAPI}" ]; then
            /bin/echo "`date`: SUCCESS: PPAPI Flash has been updated to version ${newlyinstalledPPAPI}"
        else
            /bin/echo "`date`: ERROR: PPAPI Flash update unsuccessful, version remains at ${currentinstalledPPAPI}."
        fi
    # If Flash is up to date already, just log it and exit.
    else
        /bin/echo "`date`: PPAPI Flash is already up to date, running ${currentinstalledPPAPI}."
    fi
exit
