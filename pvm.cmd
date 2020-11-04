@echo off

if "%~2" neq "" (
    call cli_changer.cmd "%~2"

    if ERRORLEVEL == 2 (
        echo Version not installed, please download and install the version!
        echo https://wampserver.aviatechno.net/files/php/wampserver3_x64_addon_php%~2.exe
        exit /b 1
    )

    call RefreshEnv.cmd
    exit /b 0
)

if "%~1" == "install" if "%~2" == "" (
    set /p version=<.pvmrc

    call cli_changer.cmd %%version%%

    if %ERRORLEVEL% == 2 (
        echo Version not installed, please download and install the version!
        echo https://wampserver.aviatechno.net/files/php/wampserver3_x64_addon_php%~2.exe
        exit /b 1
    )

    call RefreshEnv.cmd
    exit /b 0
)
