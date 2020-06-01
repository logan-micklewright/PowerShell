﻿$ATP = Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall | Get-ItemProperty | Where-Object {$_.DisplayName -eq "Cylance PROTECT" } | Select-Object -Property DisplayVersion
$ATPPlugins = Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall | Get-ItemProperty | Where-Object {$_.DisplayName -eq "Cylance PROTECT - Dell Plugins" } | Select-Object -Property DisplayVersion
$EMAgent = Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall | Get-ItemProperty | Where-Object {$_.DisplayName -eq "Dell Encryption Management Agent" } | Select-Object -Property DisplayVersion
$Shield = Get-ChildItem -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall | Get-ItemProperty | Where-Object {$_.DisplayName -eq "Dell Encryption 64-bit” -or $_.Name -eq "Dell Encryption 32-bit" } | Select-Object -Property DisplayVersion