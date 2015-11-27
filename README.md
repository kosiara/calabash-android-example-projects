Example projects for the Android version of calabash

### Installation
Ubuntu

1. sudo apt-get install ruby ruby-dev
2. sudo gem install calabash-android

OsX (Mac)

1. brew install ruby
2. sudo gem install calabash-android

Ubuntu/OsX
* set ANDROID_HOME environment var to the Android SDK path (e.g. export ANDROID_HOME=/Users/your_user/Library/Android/sdk)

Running test
------------
To run your test:

    cd path_to_project/app1_KiedyPrzyjedzie
    calabash-android run <apk>

Resign the application if needed:

    calabash-android resign <apk>

Sample test:
```ruby
Feature: Search for a specific stop

  Scenario: I search for "CENTRUM" stop and wait for a result
    * I wait for "ULUBIONE" to appear
    When I see "ULUBIONE"
    Then I enter text "centrum" into field with id "search_src_text"
    * I should see text containing "CHMIELOWICE"
    * I touch the "(040) CHMIELOWICE - CENTRUM" text
    When I see "40"
    Then I wait for 5 seconds
    * I go back
```

Sample cert file can be downloaded from the repo: [debug.keystore](https://github.com/kosiara/calabash-android-example-projects/raw/master/certs/debug.keystore)

Run calabash tests on multiple devices - specify device with ADB_DEVICE_ARG env variable:

    export ADB_DEVICE_ARG=<adb_device_serial> calabash-android resign <apk>     #OsX
    ADB_DEVICE_ARG=<adb_device_serial> calabash-android resign <apk>     #Ubuntu
    
