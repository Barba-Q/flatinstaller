#!/bin/bash
apwd="$(pwd | sed 's/ /\ /g')"

xterm -e   "sudo cp '$apwd'/files/flatinstaller.sh /usr/bin/;
	    sudo cp '$apwd'/files/flatinstaller_autoupdate.sh /usr/bin/;
            sudo cp '$apwd'/files/flatinstaller.png /usr/share/icons/;
            sudo cp '$apwd'/files/flatinstaller.desktop /usr/share/applications/;
            sudo cp '$apwd'/files/flatinstaller_autoupdate.desktop ${HOME}/.config/autostart/;
	    printf '\n\nAutoupdate is enabled, remove it from ~/.config/autostart to deactivate\n\n';
            read -s -n1 -p 'All done. Press any key to close...'"
