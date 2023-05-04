#!/bin/bash
#This script for keeping your flatpaks up to date. Use it in autostart inside your favourite DE
sleep 6
xterm -title "Flatpak updater" -geometry 100x40 -hold -e "flatpak update && read -s -n1 -p '... ...everything is done, you may close this window'";