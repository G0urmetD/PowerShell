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

foreach($item in $PSBoundParameters.Keys){
    if($item -eq $SipAddress){
        echo $Ident
        echo $LineUri
    }
}
echo $item
}