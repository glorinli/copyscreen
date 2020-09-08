adb shell mkdir /sdcard/tempscreenshots
mkdir ~/develop
mkdir ~/develop/devicescreenshots
adb shell rm /sdcard/tempscreenshots/temp.png
adb shell screencap -p /sdcard/tempscreenshots/temp.png
rm ~/develop/devicescreenshots/temp.png
adb pull /sdcard/tempscreenshots/temp.png ~/develop/devicescreenshots/temp.png
imgpbcopy ~/develop/devicescreenshots/temp.png
