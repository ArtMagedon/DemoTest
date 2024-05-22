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
read -p "Commit: " commit
echo $directory
echo $link
commit=${commit:-"New commit"}
cd ~/$directory
git add .
git commit -m "$commit"
git branch -M main
git push -u origin main
echo "Pushed with: $commit"
else
echo No directory
fi
