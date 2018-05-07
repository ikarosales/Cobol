@ECHO OFF
CLS 
echo.
echo ************************************************************************
echo * VERIFY GnuCOBOL 2.2 install - by Arnold Trembley, 2017-09-08.        *
echo * This .CMD file will install non-persistent GnuCOBOL Environment      *
echo * Variables and PATH for Windows XP and higher.  Then the TESTFUNC.COB *
echo * program will be compiled and executed.                               *
echo * NOTE:  This .CMD file can only be executed in the directory where    *
echo * the GnuCOBOL compiler is installed.  The generated EXE, DLL, and LST *
echo * files will be stored in the temp folder and deleted.                 *
echo ************************************************************************

if exist %temp%\testfunc.exe erase %temp%\testfunc.exe
if exist %temp%\testfunc.lst erase %temp%\testfunc.lst
REM pause 

echo.
echo current directory = %~dp0
echo call "%~dp0set_env.cmd"
call "%~dp0set_env.cmd"
echo. 
pause 

echo.
echo Compile the "TESTFUNC.COB" program as executable main program (-x),
echo enable all warnings (-W), with no binary truncation (-fnotrunc) 
echo. 
echo cobc -x -W -fnotrunc -t %temp%\testfunc.lst -o %temp%\testfunc.exe testfunc.cob 
echo. 
cobc -x -Wall -fnotrunc -t %temp%\testfunc.lst -o %temp%\testfunc.exe testfunc.cob 
echo GnuCOBOL 2.0 Compile Returncode = %errorlevel%
if %errorlevel%==1 goto ALLDONE

echo.
echo Now run the "TESTFUNC.EXE" program
echo.
%temp%\TESTFUNC
echo.  
pause

echo.
echo Compile the "TESTFUNC.COB" program as a DLL module (-m),
echo enable all warnings (-W), with no binary truncation (-fnotrunc) 
echo. 
echo cobc -m -W -fnotrunc -t %temp%\testfunc.lst -o %temp%\testfunc.dll testfunc.cob 
echo. 
cobc -m -Wall -fnotrunc -t %temp%\testfunc.lst -o %temp%\testfunc.dll testfunc.cob 
echo GnuCOBOL 2.0 Compile Returncode = %errorlevel%
if %errorlevel%==1 goto ALLDONE

echo.
echo Now run the "TESTFUNC" module with cobcrun.exe and COB_LIBRARY_PATH / COB_PRE_LOAD
echo.
echo set COB_LIBRARY_PATH=%temp%;%COB_LIBRARY_PATH% 
set COB_LIBRARY_PATH=%temp%;%COB_LIBRARY_PATH%
echo set COB_PRE_LOAD=testfunc 
set COB_PRE_LOAD=testfunc
echo.
cobcrun TESTFUNC
echo.  
pause

:ALLDONE
echo.
echo Now delete temporary files 
echo. 
dir %temp%\testfunc*.* 
if exist %temp%\testfunc.exe erase %temp%\testfunc.exe
if exist %temp%\testfunc.dll erase %temp%\testfunc.dll
if exist %temp%\testfunc.lst erase %temp%\testfunc.lst
echo.