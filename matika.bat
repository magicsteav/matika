@echo off
set /a skore=0
color b
title matika
goto jmeno

:jmeno
set /p jmeno=zadej sve jmeno:
goto menu

:menu
cls
echo =================================
echo      matika by magicsteav
echo =================================
echo 1= zacit
echo 2= exit 
set /p input=zadej vyber:
if %input% == 1 goto vypocet
if %input% == 2 exit

:vypocet
set /a vypocet=(%RANDOM%2/32768)+1
if %vypocet% == 1 goto a
if %vypocet% == 2 goto c

:a
cls
Set /a number=(%RANDOM%*500/32768)+1
Set /a number2=(%RANDOM%*500/32768)+1
goto b

:b
cls
echo %number%
echo +
echo %number2%
set /a C=number+number2
set /p input=.=
if %input% == %C% goto dobre
if not %input% == %C% goto chyba


:dobre
cls
set /a skore=+1
echo Dobre.
echo zmackni enter pro pokracovani.
pause>nul
goto vypocet

:chyba
cls
set /a skore=-1
echo spatne.
echo ale musime jit dale 
pause>nul 
goto vypocet

:c
set /a numer=(%RANDOM%1270/32768)+200
set /a numer2=(%RANDOM%1270/32768)+200
goto d

:d
cls
echo %numer%
echo +
echo %numer2%
set /a C=numer+numer2
set /p input=se rovna:
if %input% == %C% goto spravne
if not %input% == %C% goto spatne

:spravne
cls
echo spravna odpoved
echo za tuto odpoved zyskavas 5 bodu !!
set /a skore=+5
echo 1 pokracovat v pocitani
echo 2 vyhodnoceni bodu 
set /p input=1/2:
if %input% == 1 goto vypocet
if %input% == 2 goto body

:spatne
cls
echo spatna odpoved
echo za tuto odpoved se ti strhavaji 2 body !!
set /a skore=-2
echo 1 pokracovat v pocitani
echo 2 vyhodnoceni bodu
set /p input=1/2:
if %input% == 1 goto vypocet
if %input% == 2 goto body

:body
cls
echo %jmeno% toto je tvoje score %skore% 
pause
goto vypocet



