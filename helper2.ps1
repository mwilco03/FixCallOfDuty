function Get-EmployeeNumber {
    param (
        [Parameter(Position=0,Mandatory=$true, ValueFromPipelineByPropertyName=$true,ValueFromPipeline=$True)]
        [Alias("EN")]
        $EmployeeNumber
    )
    Get-ADUser -Filter { employeenumber -eq $employeenumber }  -Property givenname,surname,samaccountname,employeenumber 
}
