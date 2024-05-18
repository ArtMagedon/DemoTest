#!/bin/bash
if [ -s ~/configGit.dt ]
then

count=1
while read line
do
#echo "Line $count: $line"
if [ $count -eq 1 ]
then
name=$line
fi
if [ $count -eq 2 ]
then
email=$line
fi
if [ $count -eq 3 ]
then
directory=$line
fi
if [ $count -eq 4 ]
then
link=$line
fi
count=$(( $count + 1 ))
done <<<$(cat ~/configGit.dt)

else

#name1="ArtMagedon"
#echo "Input name"
#read name                                      #input git name
#email1="ap20041026@yandex.ru"
#echo "Input email"
#read email                             #input git email
echo "Input local directory"
read directory
echo "Input git directory"
read link                              #input git directory link

fi

cd ~/$directory
git pull $link
