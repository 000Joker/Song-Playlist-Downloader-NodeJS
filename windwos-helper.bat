@ECHO OFF
TITLE "SONG & PLAYLIST DOWNLOADER"
ECHO "SONG & PLAYLIST DOWNLOADER"
IF EXIST %CD%\node_modules\NUL GOTO :1
ECHO INSTALLING NODE MODULES PLEASE WAIT...
call npm install

:1
    ECHO [1] DOWNLOAD FROM song.txt
    ECHO [2] DOWNLOAD SINGLE SONG BY SEARCH
    SET /P option=ENTER YOUR CHOICE : 
    GOTO :%option%
    :A
    ECHO.
    node app
    ECHO.
    ECHO [1] DOWNLOAD ANOTHER SONG
    ECHO [2] EXIT
    SET /P choice=ENTER YOUR CHOICE : 
    GOTO :%choice%
    :B
    ECHO.
    node search
    ECHO.
    ECHO [1] DOWNLOAD ANOTHER SONG
    ECHO [2] EXIT
    SET /P choice=ENTER YOUR CHOICE : 
    GOTO :%choice%
:2
EXIT