#!/bin/bash
kdialog --msgbox "Flatpak installer\n\n\n1. Download Flatpak from https://flathub.org      \n\n2. Select Flatpak in the next step\n\n3. Provide root password\n\n4. Have fun"
filename="$(kdialog 'Zu installierendes Flatpak auswählen' --getopenfilename)"
xterm -e "sudo flatpak install -y $filename"
PID=$!
wait $PID
