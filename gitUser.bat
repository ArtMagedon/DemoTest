#!/bin/bash
if [ -s ~/.configGitUser.dt ]
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
count=$(( $count + 1 ))
done <<<$(cat ~/.configGitUser.dt)

echo "Git user name: $name"
echo "Git user email: $email"

read -p "You wanna to config parameters? [y,n]:" var
var=${var:-n}
if [ $var = 'y' ]
then
read -p "Input user name [$name]: " name1
name=${name1:- $name}
read -p "Input user email [$email]: " email1
email=${email1:- $email}

echo "" > ~/.configGitUser.dt
echo "$name
$email" > ~/.configGitUser.dt



echo "New Git user name: $name"
echo "New Git user email: $email"
fi
else

read -p "Input user name: " name
read -p "Input user email: " email
touch ".configGitUser.dt"
echo "$name
$email" > ~/.configGitUser.dt

echo "New Git user name: $name"
echo "New Git user email: $email"
fi

git config --global user.name name
git config --global user.email $email

