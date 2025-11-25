$ResourceGroupName = "AZ-EXAMPLE-RG1"
$VirtualNetworkName = "VNET3"
$Location = "EastUS"
$AddressSpace = "10.1.0.0/16"
# $subnet1 = New-AzVirtualNetworkSubnetConfig -Name "SUBNET1" -AddressPrefix "10.1.1.0/24"
# $subnet2 = New-AzVirtualNetworkSubnetConfig -Name "SUBNET2" -AddressPrefix "10.1.2.0/24"



New-AzVirtualNetwork -Name $VirtualNetworkName -ResourceGroupName $ResourceGroupName -Location $Location `
    -AddressPrefix $AddressSpace #-Subnet $subnet1, $subnet2

# Get the virtual network
$GetVirtualNetwork = Get-AzVirtualNetwork -Name $VirtualNetworkName -ResourceGroupName $ResourceGroupName

Write-Output "Virtual Network: $GetVirtualNetwork"

# #Get all subnets in the virtual network

# $AllSubnets =Get-AzVirtualNetworkSubnetConfig  -VirtualNetwork $GetVirtualNetwork
# Write-Output "Subnets in $VirtualNetworkName : $AllSubnets.[*].Name"