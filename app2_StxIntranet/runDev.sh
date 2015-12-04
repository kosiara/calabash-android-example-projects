#!/bin/bash
adb -s $1 shell pm clear com.stxnext.management.android
adb -s $1 uninstall com.stxnext.management.android
ADB_DEVICE_ARG=$1 calabash-android run app-fakeBackend-release.apk
