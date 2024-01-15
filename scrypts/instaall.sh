#!/bin/bash

dir=`pwd`

function new_term() {
   osascript -e 'tell app "Terminal" to do script "'"$@"'"'
}

bash instadock.sh
bash instaclean.sh
new_term "cd $dir && bash instabrew.sh"
new_term "cd $dir && bash instabuntu.sh"
new_term "cd $dir && bash instaqt.sh"