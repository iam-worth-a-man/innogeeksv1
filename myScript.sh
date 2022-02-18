#!/bin/bash
echo "WELCOME GUEST!!!"
echo "Press 1 for Login"
echo "Press 2 for Sign up"
read val
if [ $val == 1 ]
then
echo "Enter Email"
read email
if !(grep -qw $email names.txt)  
then
echo "Email not found, Please Sign Up"
else
echo "Enter Password"
read pass
if !(grep -qw $pass names.txt)
then
echo "Password not found, Please try again"
else
echo "Welcome $email, You are logged in"
fi
fi
else
echo "Enter Email"
read email
if !(grep -qw $email names.txt)
then
echo "Enter Password"
read pass
echo "$email $password" >> names.txt
echo "Successfully Registered"
else
echo "Emain already exists, try logging in."
fi
fi