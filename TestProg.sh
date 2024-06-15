#!/bin/bash

while :
do
  echo -e "Select option\n1) Install\n2) Update\n3) Remove\n4) Close"
  read -p "--> " user_choice
  
  if [ $user_choice = 1 ]; then
    git clone https://github.com/Fedi6431/LHE-Local_Host_Executer.git
    echo LHE installed succesfully!
  elif [ $user_choice = 2 ]; then
      rm -rfv LHE-Local_Host_Executer
      echo Removed old LHE-Local_Host_Executer
      git clone https://github.com/Fedi6431/LHE-Local_Host_Executer.git
      echo Updated git LHE-Local_Host_Executer!
  elif [ $user_choice = 3 ]; then
      rm -rfv LHE-Local_Host_Executer
      echo Removed LHE-Local_Host_Executer succesfully!
  elif [ $user_choice = 4 ]; then
      exit 0
  else 
    echo Wrong option
  fi
  read -p "Press Enter to continue"
  clear
done
