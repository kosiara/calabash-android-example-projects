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

Sample test
-----------
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

copy the file to **/home/your_user/.android/debug.keystore**

Run calabash tests on multiple devices - specify device with ADB_DEVICE_ARG env variable:

    export ADB_DEVICE_ARG=<adb_device_serial> calabash-android resign <apk>     #OsX
    ADB_DEVICE_ARG=<adb_device_serial> calabash-android resign <apk>     #Ubuntu
    

Step definitions
----------------

[github - calabash-android](https://github.com/calabash/calabash-android/blob/master/ruby-gem/lib/calabash-android/canned_steps.md)

[developer.xamarin.com](https://developer.xamarin.com/guides/testcloud/calabash/calabash-predefined-steps)

[calabash-android-steps ruby files](https://github.com/calabash/calabash-android/tree/master/ruby-gem/lib/calabash-android/steps)

Videos
------

[![KiedyPrzyjedzie calabash UI tests](http://img.youtube.com/vi/rOpjMLlK0Fg/0.jpg)](https://youtu.be/rOpjMLlK0Fg "KiedyPrzyjedzie calabash UI tests")

[![KiedyPrzyjedzie calabash UI tests](http://img.youtube.com/vi/FsHc8pWcSDM/0.jpg)](https://youtu.be/FsHc8pWcSDM "StxIntranet calabash UI tests")

[![KiedyPrzyjedzie calabash UI tests](http://img.youtube.com/vi/Lzp4HW-Wm0k/0.jpg)](https://youtu.be/Lzp4HW-Wm0k "StxIntranet calabash")

Additional - create project structure from scratch
---------------------------------------------------

To create a Cucumber skeleton of the project in the current folder run the command: 

```calabash-android gen```

It will create the directory structure needed to run tests, basic step defintions and a sample .feature file containing your first test.

Editor support
--------------
To edit Calabash/Gherkin test files use the following:
* IntelliJ Ultimate Edition (Paid)
* Atom.io - excellent free editor from github - download it [here](https://atom.io/)
* Chrome extensions (free) like: [tidy Gherkin](https://chrome.google.com/webstore/detail/tidy-gherkin/nobemmencanophcnicjhfhnjiimegjeo/related) and [Pretty Gherkin](https://chrome.google.com/webstore/detail/pretty-gherkin/blemhogdenfkkojlpghcinocbfjheioc)
* Sublime editor (paid) : [link](https://www.sublimetext.com/) with the [cucumber bundle](https://github.com/drewda/cucumber-sublime-bundle)

Atom.io
--------------
Gherkin plugin: [description](https://atom.io/packages/language-gherkin)

Terminal plugin: [description](https://atom.io/packages/terminal-plus)

Shortcuts:
⌘ ⇧ + P - available options

⌘ + T - go to file

Control + ~ - open/close terminal
