#!/bin/bash

# Update the system and remove old pkg
apt update -y
apt full-upgrade -y 
apt autoremove -y

# install openjdk
pkg install openjdk -y
# try to take the java version of the openjdk
java -version

# code that will go in the installer.sh
code ='''
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
      break
  else 
    echo -e "\nWrong option\n"
  fi
  read -p "Press Enter to continue"
  clear
done'''

# go in the main direcotry
cd ~

# create the file installer.sh
cat > installer.sh

# inject the code in the installer.sh
echo $code > installer.sh

# start the installer.sh
chmod +x installer.sh
bash installer.sh
