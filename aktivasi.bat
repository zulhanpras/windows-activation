@echo off
setlocal enabledelayedexpansion
title Aktivasi Windows (Auto Key Trial)
color 0A
cls

echo =========================================
echo   Aktivasi Windows (Auto Key)
echo =========================================
echo.

:: Daftar product key (pisahkan dengan spasi)
set keys=W269N-WFGWX-YVC9B-4J6C9-T83GX MH37W-N47XK-V7XM9-C7227-GCQG9 NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 NPPR9-FWDCX-D2C8J-H872K-2YT43 DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 3KHY7-WNT83-DGQKR-F7HPR-844BM PVMJN-6DFY6-9CCP6-7BKTT-D3WVR 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH WYPNQ-8C467-V2W6J-TX4WX-WT2RQ 44RPN-FTY23-9VTTB-MP9BX-T84FV WNMTR-4C88C-JK8YV-HQ7T2-76DF9 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ NH7J9-N4RVX-83M3G-9VYKQ-Y7R62 XGVPP-NMH47-7TTHJ-W3FW7-8HV2C 8PTT6-RNW4C-6V7J2-C2D3X-MHBPB YVWGF-BXNMC-HTQYQ-CPQ99-66QFC DXG7C-N36C4-C4HTG-X4T3X-2YV77 RK7J8-2PGYQ-4J7JM-XXKX9-YWR3Y 2BXNW-6YHWH-DHBY4-4HPJ4-9RDP3 WXCJK-NCXFF-DKH4D-MYR2C-6Q9VH FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4 489J6-VHDMP-X63PK-3K798-CPX3Y VYBBJ-TRJPB-QFQRF-QFT4D-H3GVB DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ WVDHN-86M7X-466P6-VHXV7-YY726 2VCVC-RV9VX-9XF4K-PD9VH-TW9F3 NJCF7-PW8QT-3324D-688JX-2YV66 WMDGN-G9PQG-XVVXX-R3X43-63DFG 7NBT4-WGBQX-MP4H7-QXFF8-YP3KX V3WVW-N2PV2-CGWC3-34QGF-VMJ2C 6Y6KB-N82V8-D8CQV-23MJW-BWTG6 8N67H-M3CY9-QT7C4-2TR7M-TXYCV YC6KT-GKW9T-YTKYR-T4X34-R7VHC 4CPRK-NM3K3-X6XXQ-RXX86-WXCHW JCKRF-N37P4-C2D82-9YXRT-4M63B QPM6N-7J2WJ-P88HH-P3YRH-YY74H QFFDN-GRT3P-VKWWX-X7T3R-8B639 6TPJF-RBVHG-WBW2R-86QPH-6RTM4 JMNMF-RHW7P-DMY6X-RF3DR-X2BQT 2HXDN-KRXHB-GPYC7-YCKFJ-7FVDG 6Y6KB-N82V8-D8CQV-23MJW-BWTG6 YQGMW-MPWTJ-34KDK-48M3W-X4Q6P 9BP3J-8T2HK-CTFP8-DHXTR-7KTRF 7B9N3-D94CG-YTVHR-QBPX3-RJP64 2F77B-TNFGY-69QQF-B8YKP-D69TJ


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


