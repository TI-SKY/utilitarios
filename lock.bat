@echo off
setlocal enabledelayedexpansion

set "origem=D:\sky\dados"
set "destino=D:\sky\coleta"

for %%F in (%origem%\*.?db) do (
    echo Criando link simbólico para %%~nxF
    mklink "%destino%\%%~nxF" "%%F"

    echo Colocando %%~nxF em modo de backup físico
    nbackup -l "%%F" -user sysdba -pass masterkey
)

echo Operação concluída.
pause