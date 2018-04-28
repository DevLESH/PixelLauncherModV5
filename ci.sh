#!/usr/bin/env bash
echo 'Generating changelog...'
./tools/changelog.sh > changelog.txt
echo 'Building normal variant...'
./tools/yq_linux_386 w -i apktool.yml versionInfo.versionName "P-4623511 modded 5.3 build ${TRAVIS_BUILD_NUMBER}"
./build.sh
echo 'Building Pixel variant...'
sed -i -e '0,/com.google.android.apps.nexuslauncher/s//com.google.android.apps.moddednexuslauncher/' AndroidManifest.xml
sed -i -e 's/com.google.android.apps.nexuslauncher.permission./com.google.android.apps.moddednexuslauncher.permission./g' AndroidManifest.xml
sed -i -e 's/com.google.android.apps.nexuslauncher.settings/com.google.android.apps.moddednexuslauncher.settings/g' AndroidManifest.xml
sed -i -e 's/com.google.android.apps.nexuslauncher.appssearch/com.google.android.apps.moddednexuslauncher.appssearch/g' AndroidManifest.xml
./tools/yq_linux_386 w -i apktool.yml apkFileName "PixelLauncherModV5-Pixel.apk"
./tools/yq_linux_386 w -i apktool.yml versionInfo.versionName "P-4623511 modded 5.3 build ${TRAVIS_BUILD_NUMBER} for Pixel"
./build.sh
echo 'Signing APKs...'
./sign.sh
