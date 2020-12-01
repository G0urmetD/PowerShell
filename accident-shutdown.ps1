# This script is for automatically shutdown the pc
# only for accident

$computername = $env:COMPUTERNAME

$output = "This computer is shutting down for an accident - DO NO START or RESTART this computer!!!!!"
Write-Output $output
Start-Sleep -s 5

Stop-Computer -ComputerName $computername