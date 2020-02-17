#!/usr/bin/env bash

echo "Installing enviroment set-up..."
# check provided argument is to start or shutdown
sudo gpasswd -a $USER input
sudo apt-get install libinput-tools
sudo apt-get install xdotool
sudo apt-get install ruby
sudo install fusuma
gem install fusuma
sudo mkdir ~/.config/fusuma
touch ~/.config/fusuma/config.yml
exec 3<> ~/.config/fusuma/config.yml
# Inject multiple code imports to the shared.module.ts file
echo "swipe:" >&3
echo "  3:" >&3
echo "    left:" >&3
echo "      command: 'xdotool key alt+Right'" >&3
echo "    right:" >&3
echo "      command: 'xdotool key alt+Left'" >&3
echo "    up:" >&3
echo "      command: 'xdotool key super'" >&3
echo "    down:" >&3
echo "      command: 'xdotool key super'" >&3
echo "  4:" >&3
echo "    left:" >&3
echo "      command: 'xdotool key ctrl+alt+Down'" >&3
echo "    right:" >&3
echo "      command: 'xdotool key ctrl+alt+Up'" >&3
echo "    up:" >&3
echo "      command: 'xdotool key ctrl+alt+Down'" >&3
echo "    down:" >&3
echo "      command: 'xdotool key ctrl+alt+Up'" >&3
echo "pinch:" >&3
echo "  in:" >&3
echo "    command: 'xdotool key ctrl+plus'" >&3
echo "  out:" >&3
echo "     command: 'xdotool key ctrl+minus'" >&3
echo "" >&3
echo "threshold:" >&3
echo "  swipe: 0.4" >&3
echo "  pinch: 0.4" >&3
echo "" >&3
echo "interval:" >&3
echo "  swipe: 0.8" >&3
echo "  pinch: 0.1" >&3
# Close config.yml for writting on it
exec 3>&-
echo "Setting app to auto start run on boot."
touch ~/.config/autostart/fusuma.desktop
exec 3<> ~/.config/autostart/fusuma.desktop
echo "[Desktop Entry]" >&3
echo "Type=Application" >&3
echo "Exec=fusuma" >&3
echo "Hidden=false" >&3
echo "NoDisplay=false" >&3
echo "X-GNOME-Autostart-enabled=true" >&3
echo "Name[en_US]=Fusuma" >&3
echo "Name=Fusuma" >&3
echo "Comment[en_US]=Command for starting fusuma mult-touch pad" >&3
echo "Comment=Command for starting fusuma mult-touch pad" >&3
# Close config.yml for writting on it
exec 3>&-
echo "Please restart your computer as changes to take effect for multi-touch gestures."
echo "****** THANK YOU ******"
