:: Made by Quaked
:: TikTok: _Quaked_
:: Discord: https://discord.gg/8NqDSMzYun

@echo off

:: Adding Batch to startup.
reg query "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OSU Nip" >nul 2>&1
if %errorlevel% neq 0 (
    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OSU Nip" /t REG_SZ /d "%~f0" /f >nul 2>&1
) else (
    goto :Check_Tools
)

:: Checking if OSU Tools exist. 
:Check_Tools
if not exist "C:\OSU Tools" (
   goto :Download_Tools 
) else (
   goto :Import_Nip 
)

:: Download Nvidia Profile Inspector + Custom OSU Nip.
:Download_Tools
set "FileURL=https://github.com/QuakedK/Osu-Optimizer/raw/refs/heads/main/Downloads/OSUTools.zip"
set "FileName=OSU Tools.zip"
set "ExtractFolder=C:\OSU Tools"
set "DownloadsFolder=C:\"
curl -s -L "%FileURL%" -o "%DownloadsFolder%\%FileName%"
if exist "%DownloadsFolder%\%FileName%" (  
   mkdir "%ExtractFolder%" >nul 2>&1
   pushd "%ExtractFolder%" >nul 2>&1
   tar -xf "%DownloadsFolder%\%FileName%" --strip-components=1 >nul 2>&1
   popd >nul 2>&1
   del /q "C:\OSU Tools.zip" >nul 2>&1
   goto :Import_Nip
) else (
   goto :Download_Tools
)

:: Import Custom OSU Nip.
:Import_Nip
"C:\OSU Tools\nvidiaProfileInspector.exe" -silentImport "C:\OSU Tools\OSU.nip" >nul 2>&1
exit

