@ECHO OFF
REM Author: Dean Sofer (ProLoser)
REM Created: Jul 20, 2011
REM Version: 1.0
ECHO Welcome to the Battlefield 2: Dam Warfare Installer
ECHO ===================================================
ECHO All this installer does is copy the map into your game directory
ECHO for you. You can always delete it at any time or copy the contents 
ECHO of this directory to:
ECHO.
PAUSE

SET "drive=C"
SET "destination=Users\Dean Sofer\Desktop"
SET "x86="

:options
	CLS
	ECHO Dam Warfare Install Options
	ECHO ===================================================
	ECHO.
	ECHO "%drive%:\%destination%\Dam_Warfare"
	ECHO.
	ECHO (1) Install
	ECHO (2) Change Drive Letter
	ECHO (3) Change Folder
	ECHO (4) Use Steam(tm) path
	ECHO.
	SET /P response=Please choose an option: 
	IF %response% == 1 (
		GOTO install
	)
	IF %response% == 2 (
		SET "drive=Please specify a drive letter: "
		GOTO options
	)
	IF %response% == 3 (
		SET /P "destination=Please enter new path: "
		GOTO options
	)
	IF %response% == 4 (
		SET "destination=Program Files\Steam\steamapps\common\battlefield 2\mods\bf2\Levels\Dam_Warfare"
		GOTO options
	)

:install
	ECHO Copying to: %drive%:\%destination%\Dam_Warfare
	XCOPY *.* "%drive%:\%destination%\Dam_Warfare" /T /Y /S /E /I /H /R
	XCOPY *.* "%drive%:\%destination%\Dam_Warfare" /Y /S /E /I /H /R
	ECHO Done
	PAUSE