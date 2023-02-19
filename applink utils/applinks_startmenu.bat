REM @eho off
IF "%origappdata%"=="" (
echo "this must be called from startscoop batch"
pause
exit /b
)

fsutil reparsePoint delete "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Scoop Apps"
rmdir /S /Q "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Scoop Apps"
rmdir /S /Q "%origappdata%\Microsoft\Windows\Start Menu\Programs\Scoop Apps"
mkdir "%origappdata%\Microsoft\Windows\Start Menu\Programs\Scoop Apps"
mklink /j "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Scoop Apps" "%origappdata%\Microsoft\Windows\Start Menu\Programs\Scoop Apps"
scoop reset *
