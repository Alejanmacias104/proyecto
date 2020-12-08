@echo off
echo "--------------------"
echo "Hi, Im backuping some files"
echo "--------------------"
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
echo %DD%-%MM%-%YYYY%
::xcopy fuente destino :: Fuente: es el lugar del que quiero copiar cosas :: Destino: es la carpeta donde quiero copiar cosas
xcopy /e %userprofile%\Documents\NetBeansProjects\Proyecto1\src\main\java "%userprofile%\Desktop\Cuatri 3\Mantenimiento\Proyecto%DD%-%MM%-%YYYY%-%username%\" /y/I/D  
echo "-------------"
echo "Good luck"
echo "-------------"
