# imgpbcopy
Take screenshot of Android device and copy to clipboard.

## Important!!!
The code imgpbcopy.m and imgpbpaste.m is from http://www.alecjacobson.com/weblog/?p=3816, big thanks to Alec.

## Environment
Tested on MacOS 10.15.5 Catalina, only support MacOS now because the imgpbcopy are based on Apple libraries.

## How to use
### 1. compile the imgpbcopy and imgpbpaste
``` ./build.sh ```
### 2. add to path
Add build folder to PATH or copy imgpbcopy and imgpbpaste to somewhere that are included in PATH
### 3. run the script
Connect to device via adb and run copyscr.sh, the screenshot will be copied to your clipboard. You can paste it to anywhere supports image data.

## More
If you prefer shell alias, I've written one:
```
function screenshotAndCopy {
    adb shell mkdir /sdcard/tempscreenshots
    mkdir ~/develop
    mkdir ~/develop/devicescreenshots
    adb shell rm /sdcard/tempscreenshots/temp.png
    adb shell screencap -p /sdcard/tempscreenshots/temp.png
    rm ~/develop/devicescreenshots/temp.png
    adb pull /sdcard/tempscreenshots/temp.png ~/develop/devicescreenshots/temp.png
    imgpbcopy ~/develop/devicescreenshots/temp.png
}

alias cpscr=screenshotAndCopy
```

Paste above script to you .zshrc or .bashrc (according to your own environment), then you can use the command: cpscr.
