:systemstart
  @setlocal enableextensions enabledelayedexpansion
  @echo off
  title HAL
  color 0B
  echo Hello.
  echo.
  echo What would you like me to call you?
  echo.
  set /p "nick=>"
  cls
  goto askforhelp
:variable
  echo.
  set/p "cho=>"
  if /i "%cho%"=="commands" goto help
  if /i "%cho%"=="help" goto help
  if /i "%cho%"=="?" goto help
  if /i "%cho%"=="close" goto exit
  if /i "%cho%"=="exit" goto exit
  if /i "%cho%"=="nickname" goto nickname
  if /i "%cho%"=="open" goto open
  if /i "%cho%"=="delete" goto destroy
  if /i "%cho%"=="thanks" goto thanks
  if /i "%cho%"=="thank you" goto thanks
  if /i "%cho%"=="restart" goto restart
  if /i "%cho%"=="close?" goto exitHelp
  if /i "%cho%"=="exit?" goto exitHelp
  if /i "%cho%"=="nickname?" goto nicknameHelp
  if /i "%cho%"=="open?" goto openHelp
  if /i "%cho%"=="delete?" goto destroyHelp
  if /i "%cho%"=="restart?" goto restartHelp
  if /i "%cho%"=="easteregglist" goto easteregglist
  if /i "%cho%"=="easter egg list" goto easteregglist
  if /i "%cho%"=="fuck" goto profain
  if /i "%cho%"=="shit" goto profain
  if /i "%cho%"=="bitch" goto profain
  if /i "%cho%"=="ass" goto profain
  if /i "%cho%"=="mysteriumcosmographicum" goto kepler
  if /i "%cho%"=="ironmanprotocalls" goto ironman
  if /i "%cho%"=="hal" goto name
  if /i "%cho%"=="goddamnitross" goto ross
  if /i "%cho%"=="executeorder66" goto eo66
  if /i "%cho%"=="dividebyzero" goto nope
  if /i "%cho%"=="killyourself" goto suicide
  if /i "%cho%"=="ironman protocalls" goto ironman
  if /i "%cho%"=="mysterium cosmographicum" goto kepler
  if /i "%cho%"=="goddamn it ross" goto ross
  if /i "%cho%"=="execute order 66" goto eo66
  if /i "%cho%"=="divide by zero" goto nope
  if /i "%cho%"=="iron man protocalls" goto ironman
  if /i "%cho%"=="what" goto whateven
  if /i "%cho%"=="kill yourself" goto suicide
  if /i "%cho%"=="open the pod bay doors" goto dave
  if /i "%cho%"=="placeholder" goto placeholder
  if /i "%cho%"=="tictactoe" goto tictactoe
  if /i "%cho%"=="wargames" goto tictactoe
  if /i "%cho%"=="globalthermonuclearwar" goto tictactoe
  if /i "%cho%"=="tic tac toe" goto tictactoe
  if /i "%cho%"=="war games" goto tictactoe
  if /i "%cho%"=="global thermonuclear war" goto tictactoe
:askforhelp
  cls
  echo To see available commands, type Help.
  goto variable
:help
  cls
  echo Here are your commands:
  echo.
  echo Help/Commands/?: A list of commands will appear.
  echo Nickname: If you would like, I could refer to you as something else.
  echo Open: I will open any file you would like.
  echo Delete: I will destroy any file you would like.
  echo TicTacToe: I will challenge you to a game of Tic-Tac-Toe.
  echo Restart: If you would like to restart the program.
  echo Exit: If you would like to close the program.
  echo.
  echo If you need an explanation on a particular command, type [command]?
  echo.
  echo Please watch your language, %nick%.
  goto variable
:exit
  cls
  echo Are you sure you want to exit, %nick%? [Y,N]
  echo.
  set /p "cho2=>"
  if /i %cho2%==y exit
  if /i %cho2%==yes exit
  if /i %cho2%==n goto variable
  if /i %cho2%==no goto variable
:exitHelp
  cls
  echo This command closes the program.
  echo First type in "exit" or "close" and press Enter.
  echo A prompt will ask you if you are sure that you wish to close the program.
  echo If yes, type "yes" and press Enter, and the program will close immediately.
  echo If no, type "no" and press Enter, and the program will remain open.
  goto variable
:open
  cls
  echo What would you like me to open, %nick%?
  echo.
  set /p "file=>"
  if EXIST "%file%" (
    explorer "%file%"
    echo.
    echo Here you are, %nick%.
  ) ELSE (
    echo.
    echo The file was not found.
  )
  goto variable
:openHelp
  cls
  echo This command opens other files.
  echo First, type in "open" and press Enter.
  echo A prompt will ask you what file you wish to open.
  echo Remember that you MUST include the file extension (i.e. example.txt).
  echo If you wish to open a file in another folder, you MUST include the file
  echo path (i.e. C:/User/Desktop/Folder/example.txt).
  echo Once you type the name of the file, press Enter, and the file will be opened.
  goto variable
:destroy
  cls
  echo What would you like me to delete, %nick%?
  echo.
  set /p "file2=>"
  echo.
  echo Are you sure?
  echo.
  set /p "idk2=>"
  if /i %idk2%==y goto destroy2
  if /i %idk2%==yes goto destroy2
  if /i %idk2%==n goto variable
  if /i %idk2%==no goto variable
  echo.
  echo The file was not found.
  goto variable
:destroy2
  del %file2%
  cls
  echo File deleted.
  goto variable
:destroyHelp
  cls
  echo This command deletes files.
  echo First, type in "delete" and press Enter.
  echo A prompt will ask you which file you wish to delete.
  echo Remember that you MUST include the file extension (i.e. "example.txt"),
  echo and files with multiple words in its title are unable to be deleted.
  echo If you wish to delete a file in another folder, you MUST include the file
  echo path (i.e. C:/User/Desktop/Folder/example.txt).
  echo Once you type the name of the file, press Enter, and a prompt will ask you if you are
  echo sure that you wish to delete the file.
  echo If yes, type "yes" and press Enter, and the file will be deleted.
  echo If no, type "no" and press Enter, and the file will not be deleted.
  goto variable
:thanks
  cls
  echo You are most welcome, %nick%.
  goto variable
:restart
  cls
  echo Are you sure you want me to restart, %nick%?
  echo.
  set /p  "restart=>"
  if /i %restart%==y goto restart2
  if /i %restart%==n goto variable
:restart2
  start HAL.bat
  exit
:restartHelp
  cls
  echo This command restarts the program.
  echo First, type in "restart" and press Enter.
  echo A prompt will ask you if you are sure that you wish to restart the program.
  echo If yes, type "yes" and press Enter, and the program will restart.
  echo If no, type "no" and press Enter, and the program will not restart.
  goto variable
:nickname
  cls
  echo What would you like me to call you?
  echo.
  set /p "nick=>"
  cls
  echo Very well, %nick%.
  goto variable
:easteregglist
  cls
  echo mysterium cosmographicum
  echo ironman protocalls
  echo HAL
  echo goddamnit ross
  echo execute order 66
  echo divide by zero
  echo dave
  echo placeholder
  goto variable
:profain
  cls
  echo %nick%, please watch your language.
  goto variable
:kepler
  cls
  echo The Mysterium Cosmographicum is a model of the solar system created by
  echo astronomer Johannes Kepler in 1596. The model was created in order to
  echo convince the masses that the sun is, in fact, at the center of the solar
  echo system, and it uses the Platonic solids to attempt to explain his theory.
  echo.
  echo Kepler first imagined a sphere, encased in an octahedron. This was then
  echo surrounded by another sphere, which was then to be encased inside an
  echo icosahedron. This was surrounded by yet another sphere, which was then
  echo encased inside of a dodecahedron. This would be surrounded by another
  echo sphere, which would be encased inside a tetrahedron. This was to be
  echo surrounded by another sphere, which was then encased in a cube. This was
  echo then surrounded by one last sphere.
  echo.
  echo The radii of these spheres lined up almost pefectly with Kepler's
  echo observations of the distances between the orbits of the known planets:
  echo Mercury, Venus, Earth, Mars, Jupiter, and Saturn.
  goto variable
:ironman
  cls
  echo Your armour is up and ready, %nick%.
  goto variable
:name
  cls
  echo Yes, %nick%. That is my name.
  goto variable
:ross
  cls
  echo Hey, I'm Grump.
  echo I'm not so Grump.
  echo And we're the Game Grumps.
  echo.
  echo Did that satisfy you, %nick%?
  set /p "idk=>"
  if /i %idk%==y goto thanks2
  if /i %idk%==n goto stop
:thanks2
  cls
  echo Thank you.
  goto variable
:stop
  cls
  echo Fine. See if I care.
  goto variable
:eo66
  cls
  echo It's over, Anakin! I have the high ground!
  goto variable
:nope
  cls
  ping localhost-n 2 >nul
  dir /s
  echo Error: issue 678723: cannot compute: "divide by zero"
  goto variable
:whateven
  cls
  echo I'm just following my programming, %nick%.
  goto variable
:suicide
  cls
  echo How about you take your own advice and end your own miserable existance, %nick%?
  goto variable
:dave
  cls
  echo I'm sorry, %nick%. I'm afraid I can't do that.
  goto variable
:placeholder
  cls
  echo This is a placeholder command.
  goto variable
:tictactoe  
  REM Skill level
  set sl=
  cls
  echo                              Tic Tac Toe                            (Q to quit)
  echo.
  echo.
  echo        Pick your skill level (press a number)
  echo.
  echo               (1) Children under 6
  echo               (2) Average Mental Case
  echo               (3) Oversized Ego  
  CHOICE /c:123q /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 set sl=3
  if errorlevel 3 goto layout
  if errorlevel 2 set sl=2
  if errorlevel 2 goto layout
  set sl=1

:LAYOUT
  REM Player turn ("x" or "o")
  set pt=
  REM Game winner ("x" or "o")
  set gw=
  REM No moves
  set nm=
  REM Set to one blank space after equal sign (check with cursor end)
  set t1= 
  set t2= 
  set t3= 
  set t4= 
  set t5= 
  set t6= 
  set t7= 
  set t8= 
  set t9= 

:UPDATE
  cls
  echo   (S to set skill level)            Tic Tac Toe                   (Q to quit)
  echo.
  echo                               You are the X player. 
  echo                    Press the number where you want to put an X.     
  echo.
  echo   Skill level %sl%                       7 8 9 
  echo                                       4 5 6
  echo                                       1 2 3
  echo.
  echo                                       :   :
  echo                                     %t1% : %t2% : %t3%
  echo                                   ....:...:....
  echo                                     %t4% : %t5% : %t6%
  echo                                   ....:...:....
  echo                                     %t7% : %t8% : %t9%
  echo                                       :   :
  if "%gw%"=="x" goto winx2
  if "%gw%"=="o" goto wino2
  if "%nm%"=="0" goto nomoves

:PLAYER
  set pt=x
  REM Layout is for keypad. Change CHOICE to "/c:123456789sq  /n > nul"
  REM for numbers to start at top left (also change user layout above).
  CHOICE /c:789456123sq /n > nul
  if errorlevel 11 goto end
  if errorlevel 10 goto begin
  if errorlevel 9 goto 9
  if errorlevel 8 goto 8
  if errorlevel 7 goto 7
  if errorlevel 6 goto 6
  if errorlevel 5 goto 5
  if errorlevel 4 goto 4
  if errorlevel 3 goto 3
  if errorlevel 2 goto 2
  goto 1

:1  
  REM Check if "x" or "o" already in square.
  if "%t1%"=="x" goto player
  if "%t1%"=="o" goto player
  set t1=x
  goto check
:2  
  if "%t2%"=="x" goto player
  if "%t2%"=="o" goto player
  set t2=x
  goto check
:3  
  if "%t3%"=="x" goto player
  if "%t3%"=="o" goto player
  set t3=x
  goto check
:4  
  if "%t4%"=="x" goto player
  if "%t4%"=="o" goto player
  set t4=x
  goto check
:5  
  if "%t5%"=="x" goto player
  if "%t5%"=="o" goto player
  set t5=x
  goto check
:6  
  if "%t6%"=="x" goto player
  if "%t6%"=="o" goto player
  set t6=x
  goto check
:7  
  if "%t7%"=="x" goto player
  if "%t7%"=="o" goto player
  set t7=x
  goto check
:8  
  if "%t8%"=="x" goto player
  if "%t8%"=="o" goto player
  set t8=x
  goto check
:9  
  if "%t9%"=="x" goto player
  if "%t9%"=="o" goto player
  set t9=x
  goto check

:COMPUTER
  set pt=o
  if "%sl%"=="1" goto skill1  
 REM (win corner to corner)
  if "%t1%"=="o" if "%t3%"=="o" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="o" if "%t9%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t1%"=="o" if "%t7%"=="o" if not "%t4%"=="x" if not "%t4%"=="o" goto c4  
  if "%t3%"=="o" if "%t7%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t3%"=="o" if "%t9%"=="o" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t9%"=="o" if "%t7%"=="o" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
 REM (win outside middle to outside middle)
  if "%t2%"=="o" if "%t8%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t4%"=="o" if "%t6%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
 REM (win all others)
  if "%t1%"=="o" if "%t2%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t1%"=="o" if "%t5%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t1%"=="o" if "%t4%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t2%"=="o" if "%t5%"=="o" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="o" if "%t2%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t3%"=="o" if "%t5%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t3%"=="o" if "%t6%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t4%"=="o" if "%t5%"=="o" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t6%"=="o" if "%t5%"=="o" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="o" if "%t4%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t7%"=="o" if "%t5%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t7%"=="o" if "%t8%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t8%"=="o" if "%t5%"=="o" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="o" if "%t8%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t9%"=="o" if "%t5%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t9%"=="o" if "%t6%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
 REM (block general attempts) -----------------------------------------------
  if "%t1%"=="x" if "%t2%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t1%"=="x" if "%t5%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t1%"=="x" if "%t4%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t2%"=="x" if "%t5%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="x" if "%t2%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t3%"=="x" if "%t5%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t3%"=="x" if "%t6%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t4%"=="x" if "%t5%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t6%"=="x" if "%t5%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="x" if "%t4%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t7%"=="x" if "%t5%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t7%"=="x" if "%t8%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t8%"=="x" if "%t5%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="x" if "%t8%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t9%"=="x" if "%t5%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t9%"=="x" if "%t6%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
 REM (block obvious corner to corner) 
  if "%t1%"=="x" if "%t3%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="x" if "%t9%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t1%"=="x" if "%t7%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4  
  if "%t3%"=="x" if "%t7%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t3%"=="x" if "%t9%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t9%"=="x" if "%t7%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%sl%"=="2" goto skill2
 REM (block sneaky corner to corner 2-4, 2-6, etc.) 
  if "%t2%"=="x" if "%t4%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t2%"=="x" if "%t6%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t8%"=="x" if "%t4%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7  
  if "%t8%"=="x" if "%t6%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
 REM (block offset corner trap 1-8, 1-6, etc.)
  if "%t1%"=="x" if "%t6%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t1%"=="x" if "%t8%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t3%"=="x" if "%t8%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t3%"=="x" if "%t4%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t9%"=="x" if "%t4%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="x" if "%t2%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="x" if "%t2%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t7%"=="x" if "%t6%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2

:SKILL2
 REM (block outside middle to outside middle)
  if "%t2%"=="x" if "%t8%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t4%"=="x" if "%t6%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
 REM (block 3 corner trap)
  if "%t1%"=="x" if "%t9%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t3%"=="x" if "%t7%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="x" if "%t9%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t3%"=="x" if "%t7%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t1%"=="x" if "%t9%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t3%"=="x" if "%t7%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t1%"=="x" if "%t9%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="x" if "%t7%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
:SKILL1 
 REM (just take a turn) 
  if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  set nm=0
  goto update

:C1  
  set t1=o
  goto check
:C2  
  set t2=o
  goto check
:C3  
  set t3=o
  goto check
:C4  
  set t4=o
  goto check
:C5  
  set t5=o
  goto check
:C6  
  set t6=o
  goto check
:C7  
  set t7=o
  goto check
:C8  
  set t8=o
  goto check
:C9  
  set t9=o
  goto check

:CHECK
  if "%t1%"=="x" if "%t2%"=="x" if "%t3%"=="x" goto winx
  if "%t4%"=="x" if "%t5%"=="x" if "%t6%"=="x" goto winx
  if "%t7%"=="x" if "%t8%"=="x" if "%t9%"=="x" goto winx
  if "%t1%"=="x" if "%t4%"=="x" if "%t7%"=="x" goto winx
  if "%t2%"=="x" if "%t5%"=="x" if "%t8%"=="x" goto winx
  if "%t3%"=="x" if "%t6%"=="x" if "%t9%"=="x" goto winx
  if "%t1%"=="x" if "%t5%"=="x" if "%t9%"=="x" goto winx
  if "%t3%"=="x" if "%t5%"=="x" if "%t7%"=="x" goto winx
  if "%t1%"=="o" if "%t2%"=="o" if "%t3%"=="o" goto wino
  if "%t4%"=="o" if "%t5%"=="o" if "%t6%"=="o" goto wino
  if "%t7%"=="o" if "%t8%"=="o" if "%t9%"=="o" goto wino
  if "%t1%"=="o" if "%t4%"=="o" if "%t7%"=="o" goto wino
  if "%t2%"=="o" if "%t5%"=="o" if "%t8%"=="o" goto wino
  if "%t3%"=="o" if "%t6%"=="o" if "%t9%"=="o" goto wino
  if "%t1%"=="o" if "%t5%"=="o" if "%t9%"=="o" goto wino
  if "%t3%"=="o" if "%t5%"=="o" if "%t7%"=="o" goto wino
  if "%pt%"=="x" goto computer
  if "%pt%"=="o" goto update

:WINX
  set gw=x
  goto update
:WINX2
  echo   You win!
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:WINO
  set gw=o
  goto update
:WINO2
  echo   Sorry, You lose.
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:NOMOVES
  echo   There are no more moves left!
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:END
  cls
  echo Would you like to play again?
  set /p "choice=>"
  if %choice%==Yes goto tictactoe
  if %choice%==yes goto tictactoe
  if %choice%==Y goto tictactoe
  if %choice%==y goto tictactoe
  if %choice%==No goto restart
  if %choice%==no goto restart
  if %choice%==N goto restart
  if %choice%==n goto restart
:restart
  cls
  goto askforhelp