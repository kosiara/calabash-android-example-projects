#!/bin/bash

## ----
# Step definitions:
# https://github.com/calabash/calabash-android/blob/master/ruby-gem/lib/calabash-android/canned_steps.md
# https://developer.xamarin.com/guides/testcloud/calabash/calabash-predefined-steps
## ----

### calabash-android resign peka-wirt-mon-kpRelease-2.0.5-v75-release-sa.apk
calabash-android run peka-resigned.apk
