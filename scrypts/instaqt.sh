#!/bin/bash

# Version 7
# LINK="https://drive.usercontent.google.com/download?id=1kGobeRFB2-jwTe5JirTZ8H06OrrZD8ge&export=download&authuser=0&confirm=t&uuid=f13144bd-bfb2-4490-bf74-1c9cc278437d&at=APZUnTVY_QTMEquMXs_mVtuedLOH:1701049895421"
# FILE=qt-creator-opensource-mac-x86_64-7.0.0.dmg

# Version 12
LINK="https://mirror.accum.se/mirror/qt.io/qtproject/official_releases/qtcreator/12.0/12.0.1/qt-creator-opensource-mac-x86_64-12.0.1.dmg"
FILE=qt-creator-opensource-mac-x86_64-12.0.1.dmg

if [[ ! -f ~/goinfre/$FILE ]]; then
   curl -L -o ~/goinfre/$FILE $LINK
   hdiutil attach ~/goinfre/$FILE 
   cp -R /Volumes/QT\ Creator/QT\ Creator.app ~/goinfre/
fi
open ~/goinfre/QT\ Creator.app

