#!/bin/bash

cd package

version=$(sed -n 's/^X-KDE-PluginInfo-Version=//p' metadata.json)
zip -R "../audio-device-switcher-v$version.plasmoid" '*.qml' '*.json' '*.xml'

cd ..
