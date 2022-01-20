@echo off
set DOWNLOADS_DIR=%USERPROFILE%\Downloads

SET PATH=%PATH%;%DOWNLOADS_DIR%\LLVM-13.0.0-win64\bin;%DOWNLOADS_DIR%\node-v16.13.1-win-x64;%DOWNLOADS_DIR%\PortableGit\bin;%DOWNLOADS_DIR%\go\bin;%DOWNLOADS_DIR%\mingw64\bin;

start git-cmd.exe