title "Doxygen for Model"
cd %~dp0
"c:\Program Files\doxygen\bin\doxygen.exe" Doxyfile.model
title "Doxygen for Model - Done"
pause
title "Latex for Model"
cd %~dp0
cd latex
call make.bat
title "Latex for Model - Done"

:move
echo "Lösche AVAV-Datenmodell.pdf"
pause
del ..\AVAV-Datenmodell.pdf
move refman.pdf %~dp0\AVAV-Datenmodell.pdf
IF %ERRORLEVEL% NEQ 0 goto :move
pause

