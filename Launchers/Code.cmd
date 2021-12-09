@echo off
SET PATH=%PATH%;%USERPROFILE%\Downloads\LLVM-13.0.0-win64\bin;%USERPROFILE%\Downloads\node-v16.13.1-win-x64;%USERPROFILE%\Downloads\PortableGit\bin;%USERPROFILE%\Downloads\go\bin;%USERPROFILE%\Downloads\mingw64\bin;

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
start Code.exe --extensions-dir %EXTENSION_PATH% --user-data-dir %USER_DATA_PATH%
