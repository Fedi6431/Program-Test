#!/bin/bash

while :
do
  echo -e "Select option\n1) Install\n2) Update\n3) Remove\n4) Close"
  read -p "--> " user_choice
  
  if [ $user_choice = 1 ]; then
    git clone https://github.com/Fedi6431/LHE-Local_Host_Executer.git
    echo -e "\nLHE installed succesfully!\n"
  elif [ $user_choice = 2 ]; then
      rm -rfv LHE-Local_Host_Executer
      echo -e "\nRemoved old LHE-Local_Host_Executer\n"
      git clone https://github.com/Fedi6431/LHE-Local_Host_Executer.git
      echo -e "\nUpdated git LHE-Local_Host_Executer!\n"
  elif [ $user_choice = 3 ]; then
      rm -rfv LHE-Local_Host_Executer
      echo -e "\nRemoved LHE-Local_Host_Executer succesfully!\n"
  elif [ $user_choice = 4 ]; then
      exit 0
  else 
    echo -e "\znWrong option\n"
  fi
  read -p "Press Enter to continue"
  clear
done
