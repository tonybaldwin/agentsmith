#!/bin/bash

##########################################################3
# This script will install rmatrix.tcl on a gnu/linux system.
# If you're using BSD or Mac OS, I believe it should also work fine.
# If you are using Windows, I can't help you.
# I'm trying to find someone to write an appropriate install script for Windows.
##########################################################3

name=$(whoami)

if [ ! -d $HOME/bin/ ]; then
 	mkdir $HOME/bin/
 	$PATH=$PATH:/$HOME/bin/
 	export PATH
fi

echo "Wake up, $name ..."
echo "The Matrix has you!"
echo "Follow the White Rabbit ..."

echo "Installing Agent Smith ..."

echo "Creating config files ..."

cp agentsmith.conf $HOME/.agentsmith.conf

echo "Moving files"

cp agentsmith.tcl $HOME/bin/agentsmith
chmod +x $HOME/bin/agentsmith

echo "Installation complete!"
echo "Thank you, $name, for using Agent Smith"
echo "To run Agent Smith from terminal type agentsmith, or make an icon/menu item/short cut to /home/$name/bin/agentsmith"

exit
