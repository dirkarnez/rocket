@echo off
set DOWNLOADS_DIR=%USERPROFILE%\Downloads

SET PATH=%PATH%;%DOWNLOADS_DIR%;%DOWNLOADS_DIR%\PortableGit\bin;%DOWNLOADS_DIR%\LLVM-13.0.0-woa64\bin;%DOWNLOADS_DIR%\mingw64;%DOWNLOADS_DIR%\mingw64\bin;

start cmake-gui.exe