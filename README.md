# Android emulator script
Runs an Android emulator without having to open AVD Manager.

## Requirements
- Android Studio installed and properly set up.
- You must have at least 1 AVD configured through Android Studio's AVD Manager. To see a list of available AVDs, run `./android-emulator.sh list`.

## First time
1. Change environment variable DEFAULT_EMULATOR on line 4 to your desired AVD name. To see a list of AVD, run `./android-emulator.sh list`.

## Using the script
The script alone will not work. Please use the following option and run the script with `./android-emulator.sh [option]`.

| Option | Description |
| --- | --- |
| run | Run current Android Virtual Device (AVD) emulator |
| current | Name of current Android Virtual Device (AVD) name |
| list | List of Android Virtual Devices (AVD) |

## Supported external environment variable
| Environment variable | Description |
| --- | --- |
| CURRENT_EMULATOR | The AVD name assigned to this environment variable will override the AVD name assigned to the locally assigned DEFAULT_EMULATOR |
