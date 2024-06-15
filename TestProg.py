import os 

banner = '''
Select option
1) Install
2) Update
3) Remove
4) Close
'''
print(f"{banner}") 

user_choice = int(input("-->"))

if user_choice == "1":
  
  os.system("git clone https://github.com/Fedi6431/LHE-Local_Host_Executer.git")
  print("LHE installed succesfully!")
elif user_choice == "2":
    os.system("rm -rfv LHE-Local_Host_Executer")
    os.system("git clone https://github.com/Fedi6431/LHE-Local_Host_Executer.git")
elif user_choice == "3":
    os.system("rm -rfv LHE-Local_Host_Executer")
