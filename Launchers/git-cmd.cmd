@echo off
set DOWNLOADS_DIR=%USERPROFILE%\Downloads

SET PATH=^
%DOWNLOADS_DIR%;^
%DOWNLOADS_DIR%\LLVM-13.0.0-win64\bin;^
%DOWNLOADS_DIR%\node-v16.13.1-win-x64;^
%DOWNLOADS_DIR%\go\bin;^
%DOWNLOADS_DIR%\PortableGit\bin;^
%DOWNLOADS_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0;^
%DOWNLOADS_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\bin;^
%DOWNLOADS_DIR%\cmake-3.22.2-windows-x86_64\bin;

set gopath=P:\Downloads\gopath

start git-cmd.exe