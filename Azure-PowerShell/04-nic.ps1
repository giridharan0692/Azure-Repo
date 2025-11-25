$NicName = "NIC1"
$ResourceGroupName = "AZ-EXAMPLE-RG1"
$Location = "EastUS"
$VirtualNetworkName = "VNET3"
$SubnetName = "Subnet1"

$Vnet = Get-AzVirtualNetwork -Name $VirtualNetworkName -ResourceGroupName $ResourceGroupName

$subnet = Get-AzVirtualNetworkSubnetConfig -Name $SubnetName -VirtualNetwork $Vnet

New-AzNetworkInterface -Name  $NicName  `
-ResourceGroupName $ResourceGroupName `
-Location $Location `
-Subnet $subnet `
-IpConfigurationName "ipconfig01"

