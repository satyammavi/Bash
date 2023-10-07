#!/bin/bash


read -p "enter passwd length->" pass_length

#name is to convert your password in base64  hash
read -p "enter type of passward 1.base64, 2.hex 3.your password convert in base64 to enter base->" type

case $type in
1)
for p in $(seq 1 10); do
openssl rand -base64 48 | cut -c1-$pass_length
done
;;


2)
for p in $(seq 1 10); do
 openssl rand -hex 48 | cut -c1-$pass_length
done
;;
3)
#convert in base64 
read -p "enter your password to convert in hash base64" pass
echo "$pass" |base64
;;

*)
echo "not create a paaswd"
;;
esac

#this script only for linux user not windows