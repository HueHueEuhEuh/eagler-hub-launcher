#!/bin/bash

clear

echo "============================"
echo "    Eaglercraft Launcher"
echo "============================"
echo "Select a version:"
echo "1. Eaglercraft 1.5.2"
echo "2. Eaglercraft 1.8.8"
echo "3. Eaglercraft 1.12.2"
read -p "Enter your choice (1-3): " versionChoice

case $versionChoice in
  1) versionURL="https://eaglercraft.com/mc/1.5.2" ;;
  2) versionURL="https://eaglercraft.com/mc/1.8.8" ;;
  3) versionURL="https://eaglercraft.com/mc/1.12.2" ;;
  *) 
    echo "Invalid selection. Try again."
    exit 1
    ;;
esac

echo
echo "============================"
echo "   Choose Your Browser"
echo "============================"
echo "1. Google Chrome"
echo "2. Mozilla Firefox"
echo "3. Microsoft Edge"
read -p "Enter your choice (1-3): " browserChoice

case $browserChoice in
  1) browser="google-chrome" ;;
  2) browser="firefox" ;;
  3) browser="microsoft-edge" ;;
  *) 
    echo "Invalid selection. Try again."
    exit 1
    ;;
esac

echo
echo "Launching Eaglercraft in $browser..."
$browser "$versionURL" &

exit 0
