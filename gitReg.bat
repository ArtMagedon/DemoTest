#!/bin/bash

read -p "Input local directory: " directory
read -p "Input git link: " link

mkdir ~/$directory
cd ~/$directory
touch ".configGit.dt"
echo "$directory
$link" > .configGit.dt

#echo "New Git user name: $name"
#echo "New Git user email: $email"
echo "New Git local directory: $directory"
echo "New Git link: $link"


git init
git branch -M main
git remote add origin $link
git pull $link

