#!/bin/bash

function pause(){
   read -p "$*"
}

echo "Git publish script version 2"

echo "Enter a comment: "
read -r comment

git add *
git commit -a -m "$comment"
git push origin master

echo "Done"
pause 'Press [Enter] key to continue...'

kill -9 $PPID

