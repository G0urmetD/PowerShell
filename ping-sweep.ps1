# Subnet identifier for ping sweep
$subnet = "10.16.0.0"


# Host IP to start ping sweep
$start = 1
# Host IP to finish ping sweep
$end = 254
# Number of times to attempt each ping
$ping = 2
# Path and filename for results file
$OutPath = "C:\Temp\Output.csv"

while ($start -le $end) {
    $IP = "$subnet.$start"
    $Test = Test-Connection -ComputerName $IP -count $ping -Quietn

    # If true then show Ports via nmap
    #if($Test -eq $true){
    #    nmap -sV -p- $IP
    #}

    Write-Host "$IP,$Test"
    Add-Content -LiteralPath $OutPath -Value "$IP,$Test"
    $start++
}