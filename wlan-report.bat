@echo off
cls

netsh wlan show wlanreport
Explorer "C:\ProgramData\Microsoft\Windows\WlanReport\"
"C:\ProgramData\Microsoft\Windows\WlanReport\wlan-report-latest.html"
