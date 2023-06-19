@echo off
set DOWNLOADS_DIR=%USERPROFILE%\Downloads

start notepad github_token.txt

cd Software

echo Unzipping VSCode...
"C:\Program Files\7-Zip\7z.exe" x VSCode-win32-x64-1.66.1.zip -o%DOWNLOADS_DIR%\VSCode-win32-x64-1.66.1

@REM echo Unzipping LLVM...
@REM "C:\Program Files\7-Zip\7z.exe" x LLVM-13.0.0-win64.zip -o%DOWNLOADS_DIR%\LLVM-13.0.0-win64

echo Unzipping mingw64-win32...
"C:\Program Files\7-Zip\7z.exe" x x86_64-8.1.0-release-posix-seh-rt_v6-rev0.7z -o%DOWNLOADS_DIR%
ren "%DOWNLOADS_DIR%\mingw64" "x86_64-8.1.0-release-posix-seh-rt_v6-rev0"

@REM echo Unzipping arduino...
@REM "C:\Program Files\7-Zip\7z.exe" x arduino-1.8.19-windows.zip -o%DOWNLOADS_DIR%

@REM echo Unzipping avr-gcc...
@REM "C:\Program Files\7-Zip\7z.exe" x avr-gcc-11.1.0-x64-windows.zip -o%DOWNLOADS_DIR%

@REM echo Unzipping nasm...
@REM "C:\Program Files\7-Zip\7z.exe" x nasm-2.15.05-win64.zip -o%DOWNLOADS_DIR%

echo Unzipping go...
"C:\Program Files\7-Zip\7z.exe" x go1.17.5.windows-amd64.zip -o%DOWNLOADS_DIR%

@REM echo Unzipping curl...
@REM "C:\Program Files\7-Zip\7z.exe" x curl-7.82.0_4-win64-mingw.zip -o%DOWNLOADS_DIR%

cd ..
copy Launchers\Code.cmd %DOWNLOADS_DIR%\VSCode-win32-x64-1.66.1

cd /d %DOWNLOADS_DIR%
@REM  -L, --location      Follow redirects
@REM  -J, --remote-header-name Use the header-provided filename
@REM  -O, --remote-name   Write output to a file named as the remote file
curl.exe https://github.com/dirkarnez/serial-locate/releases/download/v1.0.0/serial-locate-v1.0.0.zip -L -O -J
"C:\Program Files\7-Zip\7z.exe" x serial-locate-v1.0.0.zip

curl.exe https://github.com/dirkarnez/staticserver/releases/download/v1.2.1/staticserver-v1.2.1.zip -L -O -J
"C:\Program Files\7-Zip\7z.exe" x staticserver-v1.2.1.zip

@REM curl.exe https://github.com/dirkarnez/git-commit-helper/releases/download/v0.0.4/git-commit-helper-v0.0.4.zip -L -O -J
@REM "C:\Program Files\7-Zip\7z.exe" x git-commit-helper-v0.0.4.zip

curl.exe https://github.com/Kitware/CMake/releases/download/v3.26.1/cmake-3.26.1-windows-x86_64.zip -L -O -J
"C:\Program Files\7-Zip\7z.exe" x cmake-3.26.1-windows-x86_64.zip -o%DOWNLOADS_DIR%

curl.exe https://github.com/brechtsanders/winlibs_mingw/releases/download/12.2.0-15.0.7-10.0.0-ucrt-r4/winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r4.zip -L -O -J
"C:\Program Files\7-Zip\7z.exe" x winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r4.zip -o%DOWNLOADS_DIR%\winlibs-x86_64-posix-seh-gcc-12.2.0-mingw-w64ucrt-10.0.0-r4

curl.exe https://github.com/git-for-windows/git/releases/download/v2.40.0.windows.1/PortableGit-2.40.0-64-bit.7z.exe -L -O -J
"C:\Program Files\7-Zip\7z.exe" x PortableGit-2.40.0-64-bit.7z.exe -o%DOWNLOADS_DIR%\PortableGit

curl.exe https://nodejs.org/dist/v16.13.1/node-v16.13.1-win-x64.zip -L -O -J
"C:\Program Files\7-Zip\7z.exe" x node-v16.13.1-win-x64.zip -o%DOWNLOADS_DIR%

for /f "tokens=*" %%a in (
	'%DOWNLOADS_DIR%\PortableGit\usr\bin\head.exe  -n 1  %~dp0github_token.txt'
) do (
    set github_token=%%a
)

@REM copy Launchers\cmake-gui.cmd %DOWNLOADS_DIR%\cmake-3.22.2-windows-x86_64\bin
@REM copy Launchers\git-cmd.cmd %DOWNLOADS_DIR%\PortableGit

echo Setting up git config...
SET PATH=^
%DOWNLOADS_DIR%\PortableGit;^
%DOWNLOADS_DIR%\PortableGit\bin;^
%SystemRoot%\System32

cd /d %USERPROFILE%

git config --global user.name "dirkarnez"
git config --global user.email "smalldirkalex@gmail.com"

cd /d "%DOWNLOADS_DIR%" &&^
git clone https://dirkarnez:%github_token%@github.com/dirkarnez/cmake-as-scripting.git
cd cmake-as-scripting\common
copy /y secrets.cmake.template secrets.cmake

cd /d %DOWNLOADS_DIR%
start git-cmd.exe
