function PSTEST {
    param(
        [parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [int]$Ident,
        [parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [String]$SipAddress,
        [parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [String]$LineUri,
        [parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [String]$Lastname,
        [parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [String]$Firstname,
        [parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [bool]$AudioVideoDisabled,
        [parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [bool]$EnterpriseVoiceEnabled,
        [parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [String]$OriginatorSid,
        [parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [String]$ConferencingPolicy,
        [parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [String]$Pin,
        [parameter(Mandatory=$false,ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [String]$RegistrarPool
        )
   



foreach ($key in $PSBoundParameters.Keys){
if($key -ne 'SipAddress' -and $key -ne 'Ident'){
    $key
}}
}

PSTEST -Ident 49589384 -SipAddress "Abcde.hallo@g0urmetD.com" -LineUri "+309483048304"

$array1 = @()
for ($i=1; $i=<100; $i++){
$array1[$i]
}