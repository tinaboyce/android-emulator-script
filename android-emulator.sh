#!/bin/bash

# Change this to your own AVD
DEFAULT_EMULATOR=Galaxy_S7_API_24

if [ $# -eq 0 ]; then
    echo "Android Emulator Script (by Tina Boyce)"
    echo
    echo "Run an Android emulator without opening Android Studio."
    echo
    echo "Usage: $0 [options]"
    echo
    echo "Options:"
    echo "- run: run current Android Virtual Device (AVD) emulator"
    echo "- current: name of current Android Virtual Device (AVD) name"
    echo "- list: list of Android Virtual Devices (AVD)"
    echo
    echo "To set the current AVD name, run this command:"
    echo "- export CURRENT_EMULATOR=<name_of_emulator>"
else
    case "$1" in
        run) 
            if [ -z "$CURRENT_EMULATOR" ]
            then
                $ANDROID_HOME/tools/emulator -avd $DEFAULT_EMULATOR
            else
                $ANDROID_HOME/tools/emulator -avd $CURRENT_EMULATOR
            fi
        ;;
        current)
            if [ -z "$CURRENT_EMULATOR" ]
            then
                echo $DEFAULT_EMULATOR
            else
                echo $CURRENT_EMULATOR
            fi
        ;;
        list) 
            $ANDROID_HOME/tools/bin/avdmanager list avd | sed -n 's/.*Name: \([^ ]*\).*/\1/p'
        ;;
        *)
            echo "Invalid option. Run $0 to see options."
        ;;
    esac
fi

echo
