@echo off

md usa
echo ------Pasta Usa criada no Desktop------
echo.

if exist movable.sed (
	copy movable.sed usa
	echo ------Movable.sed novo copiado para pasta Usa------
	echo.
)

if exist tadmuffin_out.zip (
	copy tadmuffin_out.zip usa
	echo ------Tadmuffin_out.zip novo copiado para pasta Usa------
	echo.
)

if exist usa.zip (
	del usa.zip
	echo ------Usa.zip antigo deletado------
	echo.
)

rar a -ep1 usa.zip usa\
echo. 
echo ------Usa.zip criado-------

echo.
rd /S /Q C:\users\vitor\desktop\usa
del C:\users\vitor\desktop\movable.sed C:\users\vitor\desktop\tadmuffin_out.zip

echo ------Pasta Usa deletada do Desktop------

echo.
echo ------Subindo arquivo usa.zip para a nuvem------
echo.
CALL mega-put usa.zip /
echo ------Upload do arquivo usa.zip completado com sucesso------
echo.
CALL mega-export -a usa.zip
echo ------Link do arquivo usa.zip gerado com sucesso------
echo.
pause