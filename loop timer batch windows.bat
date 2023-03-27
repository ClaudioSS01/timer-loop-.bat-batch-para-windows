@echo off
REM aqui declaramos em quantos segundos queremos chamar a função loop
set segundos=30
set contador=0

:loop
ping 127.0.0.1 -n %segundos% > nul
echo funcionando
set /a contador+=1
if %contador% == 12 (
  echo echo1
) else if %contador% == 72 (
  echo echo2
) else if %contador% == 132 (
  echo echo3
  set contador=0
)
goto loop
