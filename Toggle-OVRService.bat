: @echo off
: sc config OVRService start= demand

net start "OVRService"
if %errorlevel%==0 (
	timeout /t 3
 	cd "C:\Program Files\Oculus\Support\oculus-client"
	start OculusClient.exe
	)

if %errorlevel%==2 net stop "OVRService"

exit /B
