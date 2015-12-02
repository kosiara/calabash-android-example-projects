#!/bin/bash
adb shell pm clear com.stxnext.management.android
adb uninstall com.stxnext.management.android
calabash-android run app-fakeBackend-release.apk
