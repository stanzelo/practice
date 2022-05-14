#!/bin/bash
echo "please enter username"
read username
echo "please enter password"
read pwd1
echo "please re-enter password"
read pwd2
if
[ $pwd1 != $pwd2 ];
then
echo  "incorrect password"
elif
[ $pwd1 == $pwd2 ] && [[ $pwd1 =~ [A-Z] ]] && [[ $pwd1 =~ [[:punct:]] ]] && [ ${#pwd1} -ge 8 ] && [[ $pwd1 =~ [[:digit:]] ]];
then
sudo useradd $username
echo $pwd1 | sudo passwd $username --stdin
echo "congratulation $username, your account have been created"
else
echo "account creation not successful"
echo "password must be atleast 8 character long, must contain special character, a number and capital letter"
fi

