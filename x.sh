#!/bin/bash


rm -rf ./public
hugo

mkdir -p public/user1/docs/img
mkdir -p public/user1/docs/user1/img

#
#   Find all names beginning in cover_
#   Copy them to 2 different directories:
#       1.  ./public/img
#       2.  ./public/user1/img
#
#   This works around some link-generation bugs in hugo

find content -name cover_* -exec cp {} ./public/img                   \;
find content -name cover_* -exec cp {} ./public/user1/docs/img        \;
find content -name cover_* -exec cp {} ./public/user1/docs/user1/img  \;


cp ./public/img/README.txt ./public/README.md


rm -rf docs
mv public docs


#git add .
#git commit -m "auto-commit from x.sh.  Best to put a real message in here"
#git push -u origin master



#
#sudo rm -rf /usr/share/monkey/mr/*
#cd public; sudo rsync -avD * /usr/share/monkey/mr; cd ..


