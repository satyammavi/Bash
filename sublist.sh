#!/bin/bash

#lets write a simple script of sublist3r command 
echo "1.sublist3r tool command use in script this script helps to use a  sublist3r.  Sublist3r is opensource tool."
echo "2.Sublist3r is a python tool designed to enumerate subdomains of websites using OSINT"

echo "3.i use sublist3r tool commands to write a script "

read -p "enter a domain name you choice->" domain

echo "select a search engine is optional"
read -p "enter a search engines like bing google etc.->" engines

echo "select a ports number is optional"
read -p "enter a port you scan -> " port

read -p "select type of scan you scan 1.simple sacn and with engines 2.specific port and second with engines 3.specific engines scan and port bruteforce and port 4.to save a output in file ->" type

case $type in

1)
sublist3r -d $domain 
sublist3r -e $engines -d $domian
;;
2)
sublist3r -p $port -d $domain
echo "scan with engines"
if [ $port ] && [ $engines ]; then
sublist3r -p $port -e $engines -d $domain
else
exit
fi
;;
3)
sublist3r -e $engines -b  -d $domain
echo "bruteforce specific port "
sublist3r -v  -p $port -b -d $domian
;;
4)
read -p "file name output" file
if [ $file ]; then
sublist3r -d $domain -o $file
else 
exit 
fi
;;

*)
echo"exit"
;;
esac

#contact instagram.com/satyam.mavi
