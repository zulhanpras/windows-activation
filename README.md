# Windows Activation via GitHub 🚀

[![Run in CMD](https://img.shields.io/badge/Run%20in-CMD-blue?logo=windows-terminal&logoColor=white)](#cara-pakai)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

Batch script untuk aktivasi Windows via KMS Client Key.  
Script ini otomatis mencoba beberapa key hingga menemukan yang cocok, lalu menghubungkan ke server KMS `kms8.msguides.com`.

---

## 🔹 Cara Pakai

### 1️⃣ Jalankan via CMD (sekali baris, tanpa download manual)
Copy–paste perintah ini di **CMD (Run as Administrator)**:

```cmd
curl -L https://raw.githubusercontent.com/zulhanpras/windows-activation/main/aktivasi.bat -o %temp%\aktivasi.bat && powershell -Command "Start-Process cmd -ArgumentList '/c %temp%\aktivasi.bat' -Verb RunAs"
