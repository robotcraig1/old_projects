@Echo Off
@title Laptops Bat
color 3F
cls
echo.
echo.
echo          ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo          บ                                                                    บ
echo          บ                        Laptop Builds Menu                          บ
echo          บ                        ===================                         บ
echo          บ                                                                    บ
echo          บ                                                                    บ
echo          บ   Please Select your Option for the Trust you are Building for:    บ
echo          บ                                                                    บ
echo          บ                                                                    บ
echo          บ                         1.  CCG                                    บ
echo          บ                         2.  GEM                                    บ
echo          บ                         3.  GP Coin                                บ
echo          บ                         4.  LCHS                                   บ
echo          บ                         5.  LPFT                                   บ
echo          บ                                                                    บ
echo          บ                         6.  Exit the Menu                          บ
echo          บ                                                                    บ
echo          บ                                                                    บ
echo          ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo. 
set choice=
set /p choice="     Enter the number of the Trust: "
if not '%choic%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto CCG
if '%choice%'=='2' goto GEM
if '%choice%'=='3' goto GPCoin
if '%choice%'=='4' goto LCHS
if '%choice%'=='5' goto LPFT
if '%choice%'=='6' goto Exit
echo.
echo.
goto Start

:CCG
echo You have chosen Option 1 - CCG
Call "CCGBuild.Bat"
pause
goto Exit

:GEM
echo You have chosen Option 2 - GEM
pause
mkdir "C:\Shared Folder
mkdir "C:\Shared Folder\AGEM

ICacls "c:\Shared Folder" /grant Everyone:(OI)(CI)F

REM  EDIT THE DRIVE TO COPY FILES FROM RELEVANT TO THE DRIVE YOU ARE USING 

Xcopy /S /I "D:\New Build Files\Laptops\AGEM" "c:\Shared Folder\AGEM"
echo.
Move "C:\Shared Folder\AGEM\Shared Folder.lnk" C:\Users\Public\Desktop
echo.
color cF
echo.
echo   "If Pen Stick Build", Change Organisation in KACE (Reg Edit)
echo.
echo   "Computer\HKEY_LOCAL_MACHINE\SOFTWARE\(Trust)"
echo.
XCopy /y /r   "C:\Shared Folder\AGEM\Sophos fix\iconn.cfg" "C:\ProgramData\Sophos\AutoUpdate\Config" 
pause 
echo.
color 1f
echo  This Batch File will allow you to add a computer description and
echo  Rename and add the PC to the lss Domain
echo.
echo  Don't forget to add the Computer Description!
echo.
echo  (Format is: Model - OS KACE - (Site) - User Details):
echo  Example:    E7490 - W10 KACE - Fen House - John Smith
echo.
echo. (Example Format for Computer Name: AGCSU010123)
echo. 
echo    Press any key to continue:
pause >nul
control sysdm.cpl
echo.
pause
Call "C:\Shared Folder\AGEM\AGEMBuildv1.bat"
goto Exit

:GPCoin
echo You have chosen Option 3 - GPCoin
pause
mkdir "C:\Shared Folder
mkdir "C:\Printers
mkdir "C:\Shared Folder\Desktops

pause

ICacls "c:\Shared Folder" /grant Everyone:(OI)(CI)F


REM  EDIT THE DRIVE TO COPY FILES FROM RELEVANT TO THE DRIVE YOU ARE USING 

Xcopy /S /I "D:\New Build Files\Laptops\GP COIN" "c:\Shared Folder\Desktops"


REM XCOPY /S /I %~d0#Builds\New_Build_Files\GP_COIN_Desktops "c:\Shared Folder\Desktops"

echo.
pause
Copy "C:\Shared Folder\Desktops\#Public_Shortcuts\Shared Folder.lnk" "C:\Users\Public\Desktop"

Copy "C:\Shared Folder\Desktops\#Public_Shortcuts\Acrobat Reader DC.lnk" "C:\Users\Public\Desktop"

move "c:\Shared Folder\Desktops\#Desktop\*.*" "C:\Users\Public\Desktop"
echo.
echo.
echo.
echo   "If Pen Stick Build", Change Organisation in KACE (Reg Edit)
echo.
echo   "Computer\HKEY_LOCAL_MACHINE\SOFTWARE\(Trust)"
echo.
XCopy /y /r   "C:\Shared Folder\Desktops\Sophos fix\iconn.cfg" "C:\ProgramData\Sophos\AutoUpdate\Config"
pause 
echo.
color 1f
echo  This Batch File will allow you to add a computer description and
echo  Rename and add the PC to the lss Domain
echo.
echo  Don't forget to add the Computer Description!
echo.
echo  (Format is: Model - OS KACE - (Site) - User Details):
echo  Example:    E7490 - W10 KACE - Fen House - John Smith
echo.
echo. (Example Format for Computer Name: LCHS010123)
echo. 
echo    Press any key to continue:
pause >nul
control sysdm.cpl
echo.
pause
Call "C:\Shared Folder\Desktops\GPCoinBuildv1.bat"
goto Exit

:LCHS
echo You have chosen Option 4 - LCHS
pause
mkdir "C:\Shared Folder
mkdir "C:\Shared Folder\LCHS

ICacls "c:\Shared Folder" /grant Everyone:(OI)(CI)F

REM  EDIT THE DRIVE TO COPY FILES FROM RELEVANT TO THE DRIVE YOU ARE USING 

Xcopy /S /I "D:\New Build Files\Laptops\LCHS" "c:\Shared Folder\LCHS"
echo.
Move "C:\Shared Folder\LCHS\LCHS Shortcuts\Shared Folder.lnk" C:\Users\Public\Desktop
echo.
Move "C:\Shared Folder\LCHS\LCHS Shortcuts" C:\Users\Public\Desktop
echo.
color cF
echo.
echo   "If Pen Stick Build", Change Organisation in KACE (Reg Edit)
echo.
echo   "Computer\HKEY_LOCAL_MACHINE\SOFTWARE\(Trust)"
echo.
XCopy /y /r   "C:\Shared Folder\LCHS\Sophos fix\iconn.cfg" "C:\ProgramData\Sophos\AutoUpdate\Config"
pause 
echo.
color 1f
echo  This Batch File will allow you to add a computer description and
echo  Rename and add the PC to the lss Domain
echo.
echo  Don't forget to add the Computer Description!
echo.
echo  (Format is: Model - OS KACE - (Site) - User Details):
echo  Example:    E7490 - W10 KACE - Fen House - John Smith
echo.
echo. (Example Format for Computer Name: LCHS010123)
echo. 
echo    Press any key to continue:
pause >nul
control sysdm.cpl
echo.
pause
Call "C:\Shared Folder\LCHS\LCHSBuildv1.bat"
goto Exit

:LPFT
echo You have chosen Option 5 - LPFT
pause
mkdir "C:\Shared Folder
mkdir "C:\Shared Folder\LPFT

ICacls "c:\Shared Folder" /grant Everyone:(OI)(CI)F

REM  EDIT THE DRIVE TO COPY FILES FROM RELEVANT TO THE DRIVE YOU ARE USING 

Xcopy /S /I "D:\New Build Files\Laptops\LPFT" "c:\Shared Folder\LPFT"
echo.
Move "C:\Shared Folder\LPFT\Desktop Shortcuts\LPFT Shortcuts" "C:\Users\Public\Desktop"
echo.
Move "C:\Shared Folder\LPFT\Desktop Shortcuts\Shared Folder.lnk" "C:\Users\Public\Desktop"
XCopy /y /r   "C:\Shared Folder\LPFT\Sophos fix\iconn.cfg" "C:\ProgramData\Sophos\AutoUpdate\Config"
pause
echo.
echo.
echo  This Batch File will allow you to add a computer description and
echo  Rename and add the PC to the lss Domain
echo.
echo  Don't forget to add the Computer Description!
echo.
echo  (Format is: Model - OS KACE - (Site) - User Details):
echo  Example:    E7490 - W10 KACE - Fen House - John Smith
echo.
echo. (Example Format for Computer Name: LPFT010123)
echo. 
echo    Press any key to continue:
pause >nul
control sysdm.cpl
echo.
pause
Call "C:\Shared Folder\LPFT\LPFTBuildv3.bat"
goto Exit

:Exit
color cf
echo.
echo You have chosen Option 6 - Exit
echo.
echo You are now exiting from the Menu
echo.
pause
