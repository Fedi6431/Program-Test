banner='''
Select option
1) Install
2) Update
3) Remove
4) Close
'''
echo $banner 
read -p "--> " user_choice

if [ $user_choice = "1" ] then
  git clone https://github.com/Fedi6431/LHE-Local_Host_Executer.git
  echo LHE installed succesfully!
elif [ $user_choice = "2" ] then
    rm -rfv LHE-Local_Host_Executer
    git clone https://github.com/Fedi6431/LHE-Local_Host_Executer.git
elif [ $user_choice = "3" ] then
    rm -rfv LHE-Local_Host_Executer
fi
