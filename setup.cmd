@echo off
echo.Unzipping VSCode...
"C:\Program Files\7-Zip\7z.exe" x VSCode-win32-x64-1.50.1.zip -o%USERPROFILE%\Downloads\VSCode-win32-x64-1.50.1

echo.Unzipping PortableGit...
"C:\Program Files\7-Zip\7z.exe" x PortableGit-2.28.0-64-bit.7z.exe -o%USERPROFILE%\Downloads\PortableGit

echo.Unzipping node...
"C:\Program Files\7-Zip\7z.exe" x node-v12.19.0-win-x64.zip -o%USERPROFILE%\Downloads\node-v12.19.0-win-x64

echo.Copying Launchers...
copy Launchers\Code.cmd %USERPROFILE%\Downloads\VSCode-win32-x64-1.50.1

echo.Setting up git config...
SET PATH=%USERPROFILE%\Downloads\PortableGit\bin;

cd /d %USERPROFILE%

git config --global user.name "dirkarnez"
git config --global user.email "smalldirkalex@gmail.com"

pause
