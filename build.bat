pushd %~dp0 
call %~dp0one-time-init.bat
hugo
popd
