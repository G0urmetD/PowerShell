$ProcessName = "calculator"
$Program = "calc.exe"
 

$CheckProcess = ""
$CheckProcess = Get-Process | Where-Object {$_.ProcessName -eq $ProcessName}
If($CheckProcess -eq $null){
start $Program
} 
else {
Write-Host "process is running."
}