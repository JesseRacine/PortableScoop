@ECHO OFF

REM before proceeding, create the following directories
REM scoop, scoop_global, temp, roaming, local, home, microsoft, windows, start menu, programs
REM set up the following directory structure:
REM home\AppData\Local
REM home\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Scoop Apps

REM simply modify the base directory below to wherever you want to install scoop (absolute path)

set base=C:\Users\YourUser\Desktop\scoop

set origappdata=%APPDATA%
set APPDATA=%base%\home\AppData\Roaming
set HOMEPATH=%base%\home
set LOCALAPPDATA=%base%\home\AppData\Local
set SCOOP=%base%\scoop
set SCOOP_GLOBAL=%base%\scoop_global
set TMP=%base%\temp
set TEMP=%base%\temp
set USERPROFILE=%base%\home
set ProgramData=%base%\programdata

REM note that when scoop is first intalled, it tends to set the path permanently in Windows. If you copy over an existing scoop install
REM then you will manually need to set the path. Otherwise, if you just want to set the path for this session only then uncomment the lines below:

REM set PATH=%PATH%%base%\scoop\shims;

cd %base%

powershell
