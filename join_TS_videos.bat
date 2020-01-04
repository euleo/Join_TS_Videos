REM Script batch che cicla sulle cartelle nella directory dove viene eseguito
REM In ogni cartella unisce i file ts in unico file ts che chiama con il nome della cartella
REM Il file ts creato viene salvato nella cartella dove viene eseguito lo script

@ECHO OFF 
:: Eseguire dalla cartella dei Film
TITLE Join video TS

REM gli apici servono per gli spazi nei nomi delle cartelle
for /d %%i in (*) do ( ECHO INIZIO %%i & cd "%%i" & ECHO copy & copy /b *.ts "../%%i".ts & cd .. & ECHO FINE %%i)

PAUSE