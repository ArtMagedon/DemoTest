#!/bin/bash
name="ArtMagedon"					#input git name
email="ap20041026@yandex.ru"				#input git email
directory="Data"
git config --global user.name $name
git config --global user.email $email
git config --global init.defaultBranch main
#git config --list
mkdir $directory
#cp gitReg.bat $directory"/gitReg.bat"
#cp installConfigGitSsh.bat $directory"/installConfigGitSsh.bat"
cd $directory
#touch "README.md"
#echo "Created with "$name > README.md
git init
#git add .
#git commit -m "commit reg"
git branch -M main
git remote add origin git@github.com:ArtMagedon/DemoTest.git
#git push -u origin main
git pull git@github.com:ArtMagedon/DemoTest.git
