$storeNumbers = 001 .. 999

foreach ($store in $storeNumbers) {
	$user = dsquery user -samid MGR$store
	if($user -ne $null)	{
		Get-ADUser MGR$store | Get-ADPrincipalGroupMembership | Select -Expand Distinguishedname | Get-DistributionGroup -IgnoreDefaultScope | Select Alias | Export-csv c:\users\agossen\desktop\tammy\managers\MGR$store.csv -NoTypeInformation
	}
}