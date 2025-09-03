@echo off
setlocal enabledelayedexpansion
title Aktivasi Windows via KMS (Auto Key Trial)
color 0A
cls

echo =========================================
echo   Aktivasi Windows KMS Client (Auto Key)
echo =========================================
echo.

:: Daftar product key (pisahkan dengan spasi)
set keys=W269N-WFGWX-YVC9B-4J6C9-T83GX NPPR9-FWDCX-D2C8J-H872K-2YT43 MH37W-N47XK-V7XM9-C7227-GCQG9

set "validkey="

for %%k in (%keys%) do (
    echo Mencoba key: %%k
    cscript //nologo %windir%\system32\slmgr.vbs /ipk %%k >nul 2>&1
    if !errorlevel! EQU 0 (
        echo [OK] Key berhasil dipasang: %%k
        set "validkey=%%k"
        goto aktivasi
    ) else (
        echo [X] Gagal input key: %%k
    )
)

:aktivasi
if not defined validkey (
    echo.
    echo Tidak ada key yang berhasil dipasang!
    pause
    exit /b
)

echo.
echo Menggunakan key: %validkey%

:: Set server KMS
cscript //nologo %windir%\system32\slmgr.vbs /skms kms8.msguides.com

:: Aktivasi
cscript //nologo %windir%\system32\slmgr.vbs /ato

:: Cek status
cscript //nologo %windir%\system32\slmgr.vbs /xpr

echo.
echo Aktivasi selesai. Tekan tombol apapun untuk keluar.
pause >nul

