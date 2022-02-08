#!/bin/bash
# passwordCheck.sh - Check user’s password against the hash stored in 'secret.txt'
# Author: Bimbo Bakare
# Date:


# get the password input from User without displaying it
clear
read -sp  "Enter password here :m " mpassword

echo "$mpassword" | sha256sum -c "./password/secret.txt"

   if  test $? -eq 0 ; then
      echo  "Access Granted"
      exit 0
   
   else
      echo  "Access Denied"
      exit 1
   fi


# References:
# McKnight, R (2022, Feb6). 2.4 Write if statements to control program flow
# https://blackboard.ecu.edu.au/webapps/blackboard/execute/displayLearningUnit?course_id=_662967_1&content_id=_8274249_1

