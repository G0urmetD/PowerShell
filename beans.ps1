$search = Get-ChildItem -Path "C:\Temp\beans"   
$a = @()                                       
$b = @()                                        
$output = "C:\Temp\beans\server.txt"            

if(Test-Path $output){                          

    Remove-Item $output                         

}

foreach ($item in $search) {                   
    
    $datei = Get-Content -Path $item.FullName   

    $a += $datei                              

    Remove-Item -Path $item.FullName            

}

foreach ($item in $a) {                        
    
    if($item.Length -ne 0){                    

        $b += $item                            

    }

}
$b = $b | Sort-Object -Unique                   
Out-File -FilePath $output -InputObject $b      