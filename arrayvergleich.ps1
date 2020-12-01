$a = @(1,2,3,4,5)
$b = @(3,4,5,6,7)



#Compare-Object -ReferenceObject ($a | Sort-Object) -DifferenceObject ($b | Sort-Object) -IncludeEqual

$result = Compare-Object $a $b -IncludeEqual #-ExcludeDifferent -PassThru

$c = $result.InputObject
#echo $result | Where-Object { $_.SideIndicator -eq '==' }
#$c[1]%2

for ($i = 0; $i -lt $c.Length; $i++) {

    if($c[$i]%2 -gt 0){
        Write-Output $c[$i]
    }
}