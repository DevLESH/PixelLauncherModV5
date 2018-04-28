#!/usr/bin/env bash
printf "$store_password\n" | ./tools/apksigner sign --ks mpl.jks --out "$APK_NAME" dist/PixelLauncherModV5.apk
printf "$store_password\n" | ./tools/apksigner sign --ks mpl.jks --out "$PIXEL_APK_NAME" dist/PixelLauncherModV5-Pixel.apk
