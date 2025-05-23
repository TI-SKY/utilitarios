@echo off
setlocal enabledelayedexpansion

set "origem=D:\sky\dados"
set "destino=D:\sky\coleta"

for %%F in (%origem%\*.?db) do (
    nbackup -n "%%F" -user sysdba -pass masterkey
)

echo Operação concluída.
pause