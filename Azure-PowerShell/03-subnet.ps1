$VirtualNetworkName = "VNET3"
$ResourceGroupName = "AZ-EXAMPLE-RG1"
$SubnetName = "Subnet1"
$SubnetAddressPrefix = "10.1.1.0/24"

$Vnet = Get-AzVirtualNetwork -name $VirtualNetworkName -ResourceGroupName $ResourceGroupName 

 Add-AzVirtualNetworkSubnetConfig -Name $SubnetName -AddressPrefix $SubnetAddressPrefix -VirtualNetwork $Vnet

$Vnet | set-AzVirtualNetwork