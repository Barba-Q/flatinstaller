#!/bin/bash
apwd="$(pwd | sed 's/ /\ /g')"

xterm -e   "sudo cp '$apwd'/files/flatinstaller.sh /usr/bin/;
            sudo cp '$apwd'/files/flatinstaller.png /usr/share/icons/;
            sudo cp '$apwd'/files/flatinstaller.desktop /usr/share/applications/
            read -s -n1 -p 'All done. Press any key to close...'"
