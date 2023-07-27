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

REM set EXTENSION_PATH="%~dp0extensions"
REM set USER_DATA_PATH="%~dp0user_data"

set EXTENSION_PATH=P:\Downloads\vscode-data\extensions
set USER_DATA_PATH=P:\Downloads\vscode-data\user-data

if not exist %EXTENSION_PATH% (
	mkdir %EXTENSION_PATH%
)
if not exist %USER_DATA_PATH% (
	mkdir %USER_DATA_PATH%
)

set GOPATH=P:\Downloads\gopath
start %~dp0\Code.exe --extensions-dir %EXTENSION_PATH% --user-data-dir %USER_DATA_PATH% %*
