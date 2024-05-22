#!/bin/bash
if [ -s .configGit.dt ]
then

count=1
while read line
do
if [ $count -eq 1 ]
then
directory=$line
fi
if [ $count -eq 2 ]
then
link=$line
fi
count=$(( $count + 1 ))
done <<<$(cat .configGit.dt)

cd ~/$directory
git pull $link
else
echo No acvive directory
fi
