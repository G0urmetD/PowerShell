$strKeyPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches"
$strValueName   = "StateFlags0065"
$subKey    = Get-ChildItem -Path $strKeyPath

ForEach($item in $subkey)
{
    $null = New-ItemProperty
        -Path $strKeyPath\$item
        -Name $strValueName
        -PropertyType DWord
        -Value 2
        -ea SilentlyContinue
        -wa SilentlyContinue
}

Start-Process cleanmgr
        -ArgumentList "/sagerun:65"
        -Wait
        -NoNewWindow
        -ErrorAction    SilentlyContinue
        -WarningAction  SilentlyContinue

ForEach($subKey in $subKey)
{
    $null = Remove-ItemProperty
        -Path $strKeyPath\$subkey
        -Name $strValueName
        -ea SilentlyContinue
        -wa SilentlyContinue
}

Write-Host 'Clearing CleanMgr.exe automation settings.'
Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\*' -Name StateFlags0001 -ErrorAction SilentlyContinue | Remove-ItemProperty -Name StateFlags0001 -ErrorAction SilentlyContinue

Write-Host 'Enabling Update Cleanup. This is done automatically in Windows 10 via a scheduled task.'
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Update Cleanup' -Name StateFlags0001 -Value 2 -PropertyType DWord

Write-Host 'Enabling Temporary Files Cleanup.'
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Files' -Name StateFlags0001 -Value 2 -PropertyType DWord

Write-Host 'Enabling Setup-Log Files'
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Setup Files' -Name StateFlags0001 -Value 2 -PropertyType DWord

Write-Host 'Enabling Recycle Bin.'
New-itemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Recycle Bin' -Name StateFlags0001 -Value 2 -PropertyType DWord

Write-Host 'Enabling Windows Upgrade Log Files'
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Upgrade Log Files' -Name StateFlags0001 -Value 2 -PropertyType DWord

Write-Host 'Enabling Downloaded Program Files'
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Downloaded Program Files' -Name StateFlags0001 -Value 2 -PropertyType DWord

Write-Host 'Enabling System error memory dump files'
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error memory dump files' -Name StateFlags0001 -Value 2 -PropertyType DWord

Write-Host 'Enabling Direct-X-Shadercache'
New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\D3D Shader Cache' -Name StateFlags0001 -Value 2 -PropertyType DWord

Write-Host 'Starting CleanMgr.exe...'
Start-Process -FilePath CleanMgr.exe -ArgumentList '/sagerun:1' -WindowStyle Hidden -Wait

Write-Host 'Waiting for CleanMgr and DismHost processes. Second wait neccesary as CleanMgr.exe spins off separate processes.'
Get-Process -Name cleanmgr,dismhost -ErrorAction SilentlyContinue | Wait-Process


$UpdateCleanupSuccessful = $false
if (Test-Path $env:SystemRoot\Logs\CBS\DeepClean.log) {
    $UpdateCleanupSuccessful = Select-String -Path $env:SystemRoot\Logs\CBS\DeepClean.log -Pattern 'Total size of superseded packages:' -Quiet
}

if ($UpdateCleanupSuccessful) {
    Write-Host 'Rebooting to complete CleanMgr.exe Update Cleanup....'
    SHUTDOWN.EXE /r /f /t 0 /c 'Rebooting to complete CleanMgr.exe Update Cleanup....'
}

exit 0