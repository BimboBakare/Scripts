#!/bin/bash

# Megafoldermaker - Week 3.3 scripts to create folders
# Author 'Bimbo Bakare
# Date: 03/02/2022


#  echo "$#"

var1=$1
var2=$2

# echo "var 1 is $1 and var 2 is $2"
# read


# If there aren't two arguments to the script
if  [[ -z "$var1" || -z "$var2" ]]; then

echo " gracious 1 is $1 and 2 is $2
read
fi

if (( $#!=2 )); then

    #Print an error and exit
    read -p "Error, provide two numbers" var1 var2

else

var1=$1
var2=$2

fi

echo "Variables are $#"
echo "Var 1 is $var1"
echo "Var2 is $var2"
read



while (( $var2 < $var1 ))

do

 clear

 echo "Be smart mate, make second number greater than the first"
 read -p "Enter two numbers Smart Mate" var1 var2

done


mCount=0 #counter for number of folders created

#For every number between the first argument and the last

for ((i = $var1; i <= $var2; i++))

do
   #check if that folder exists

   if [ -d week$i ]; then
      echo -e "A folder named week$i exists and cannot be overwritten \n Program will skip creating that folder"
      read
   else
    #Create a new folder for that number

    echo "Creating directory number $i"

    mkdir "week$i"

   mCount=$((mCount+1))

  fi

done

echo -e "Congratulations, $mCount folders have been created for you \n You will now EXIT to MegaMenu "

read

./MegaMenu.sh


#References
