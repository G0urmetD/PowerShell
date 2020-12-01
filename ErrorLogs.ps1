$GetLogEvents = {Param([string]$LogName, [string]$EntryType, [string]$ComputerName = "localhost")
    
    Get-EventLog -LogName $LogName -EntryType $EntryType -ComputerName $ComputerName | Group-Object -Property EventID | Sort-Object -Property count -Descending

}

Function Get-LogObject {
Param($LogList)
    $EventArray = @()
    foreach ($Record in $LogList) {
        $NewEntry = New-Object -TypeName psobject


        Select -InputObject $Record -Property Count, Name
        $Message = $Record.Group[0].Message
        Write-Output ("Message {0}" -f $Message)

        $NewEntry | Add-Member -MemberType NoteProperty -Name EventID -Value $Record.Name
        $NewEntry | Add-Member -MemberType NoteProperty -Name Count -Value $Record.Count
        $NewEntry | Add-Member -MemberType NoteProperty -Name Remark -Value $Message
        $NewEntry | Add-Member -MemberType NoteProperty -Name SystemName -Value $Record.Group[0].MachineName
    
        $EventArray += $NewEntry
    }
    return $EventArray
}

Out-File -InputObject (&$GetLogEvents -LogName System -EntryType Warning) -FilePath "C:\Users\Documents\ErrList.log" -Encoding ascii

Out-File -InputObject (&$GetLogEvents -LogName System -EntryType Error -Computername G0urmetD) -FilePath "C:\Users\Documents\ErrList.log" -Encoding ascii -Append
