@echo off
echo.Unzipping VSCode...
"C:\Program Files\7-Zip\7z.exe" x VSCode-win32-x64-1.62.3.zip -o%USERPROFILE%\Downloads\VSCode-win32-x64-1.62.3

echo.Unzipping PortableGit...
"C:\Program Files\7-Zip\7z.exe" x PortableGit-2.28.0-64-bit.7z.exe -o%USERPROFILE%\Downloads\PortableGit

echo.Unzipping node...
"C:\Program Files\7-Zip\7z.exe" x node-v16.13.1-win-x64.zip -o%USERPROFILE%\Downloads

echo.Unzipping LLVM...
"C:\Program Files\7-Zip\7z.exe" x LLVM-13.0.0-win64.zip -o%USERPROFILE%\Downloads\LLVM-13.0.0-win64

echo.Unzipping mingw64-posix...
"C:\Program Files\7-Zip\7z.exe" x x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0.7z -o%USERPROFILE%\Downloads
ren "%USERPROFILE%\Downloads\mingw64" "mingw64-posix"

echo.Unzipping mingw64-win32...
"C:\Program Files\7-Zip\7z.exe" x x86_64-8.1.0-release-win32-seh-rt_v6-rev0.7z -o%USERPROFILE%\Downloads
ren "%USERPROFILE%\Downloads\mingw64" "mingw64-win32"

echo.Unzipping cmake...
"C:\Program Files\7-Zip\7z.exe" x cmake-3.22.0-rc1-windows-x86_64.zip -o%USERPROFILE%\Downloads

echo.Copying Launchers...
copy Launchers\Code.cmd %USERPROFILE%\Downloads\VSCode-win32-x64-1.62.3
copy Launchers\cmake-gui.cmd %USERPROFILE%\Downloads\cmake-3.22.0-rc1-windows-x86_64\bin
copy Launchers\git-cmd.cmd %USERPROFILE%\Downloads\PortableGit

echo.Setting up git config...
SET PATH=%USERPROFILE%\Downloads\PortableGit\bin;

cd /d %USERPROFILE%

git config --global user.name "dirkarnez"
git config --global user.email "smalldirkalex@gmail.com"

pause
