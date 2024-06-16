@echo off
https://github.com/git-for-windows/git/releases/download/v2.45.2.windows.1/Git-2.45.2-64-bit.exe

:menu
echo Installer menu
echo 1) Install
echo 2) Update
echo 3) Remove
goto menu

set /P user_choice="--> "

if user_choice=="1" (
  set url=https://download.oracle.com/java/22/latest/jdk-22_windows-x64_bin.exe
  set output=C:\Users\%username%\Desktop\jdk-22_windows-x64_bin.exe
(    
    echo $url = '%url%'
    echo $output = '%output%'
    echo Invoke-WebRequest -Uri $url -OutFile $output
  ) > installer.ps1
  
  powershell.exe -ExecutionPolicy Bypass -File download.ps1
  
  del installer.ps1
  
  start C:\Users\%username%\Desktop\jdk-22_windows-x64_bin.exe
  
  )
if user_choice=="2" (
  
)
