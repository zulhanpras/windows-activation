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
set keys=WX4NM-KYWYW-QJJR4-XV3QB-6VM33 W269N-WFGWX-YVC9B-4J6C9-T83GX MH37W-N47XK-V7XM9-C7227-GCQG9 NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J 9FNHH-K3HBT-3W4TD-6383H-6XYWF 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y YVWGF-BXNMC-HTQYQ-CPQ99-66QFC NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ NPPR9-FWDCX-D2C8J-H872K-2YT43 DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 YYVX9-NTFWV-6MDM3-9PT4T-4M68B 44RPN-FTY23-9VTTB-MP9BX-T84FV M7XTQ-FN8P6-TTKYV-9D4CC-J462D 92NFX-8DJQP-P6BBQ-THF9C-7CG2H

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


