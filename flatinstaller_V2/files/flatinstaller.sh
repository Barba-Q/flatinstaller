#!/bin/bash
choice=$(kdialog --radiolist "What do you want to do?" \
1 "Download Flatpaks from Flathub"      off \
2 "Install downloaded Flatpaks" 	off \
3 "Show installed Flatpaks"     	off \
4 "Update installed Flatpaks"   	off;);

if [ "$?" = 0 ]; then
    if      [ "$choice" = 1 ]; then
                firefox -new-window https://flathub.org/apps;
		sleep 5; 
		sh /usr/bin/flatinstaller.sh;
    elif    [ "$choice" = 2 ]; then
                filename="$(kdialog 'Choose Flatpak' --getopenfilename)";
                xterm -title "Flatpak helper" -geometry 110x40 -hold -e "sudo flatpak install -y $filename";
                PID=$!;
                wait $PID;
    elif    [ "$choice" = 3 ]; then
                xterm -title "Flatpak helper" -geometry 110x40 -e "flatpak list && read -s -n1 -p '... ...press any key to close'";
    elif    [ "$choice" = 4 ]; then
                xterm -title "Flatpak helper" -geometry 110x40 -hold -e "flatpak update && read -s -n1 -p '... ...everything is done, you may close this window'";
    fi;
elif [ "$?" = 1 ]; then
	kdialog --sorry "Closed by user";
else
	kdialog --error "ERROR";
fi;