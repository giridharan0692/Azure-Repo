# Create a resource group in Azure

$ResourceGroupName = "AZ-EXAMPLE-RG2"
$Location = "EastUS"

New-AzResourceGroup -Name $ResourceGroupName -Location $Location