# New-AzNetworkSecurityRuleConfig to create security rules
# New-AzNetworkSecurityGroup to create a network security group (NSG)
# Set-AzVirtualNetworkSubnetConfig to associate the NSG with a subnet in a virtual network
# Set-AzVirtualNetwork to update the virtual network with the modified subnet configuration

$NsgName = "VmNsg1"
$ResourceGroupName = "AZ-EXAMPLE-RG1"
$Location = "EastUS"
$VNetName = "VNET3"
$SubnetName = "Subnet1"

$AllowHttp=New-AzNetworkSecurityRuleConfig -Name "in-allow-http-from-internet-to-10-1-0-4" `
-Access Allow -Protocol Tcp -Direction Inbound -Priority 410 `
-SourceAddressPrefix Internet -SourcePortRange * `
-DestinationAddressPrefix '10.1.0.4' -DestinationPortRange 80

$AllowSsh=New-AzNetworkSecurityRuleConfig -Name "in-allow-ssh-admin" `
-Access Allow -Protocol Tcp -Direction Inbound -Priority 400 `
-SourceAddressPrefix Internet -SourcePortRange * `
-DestinationAddressPrefix '10.1.0.4' -DestinationPortRange 22

$Nsg = New-AzNetworkSecurityGroup -Name $NsgName `
    -ResourceGroupName $ResourceGroupName `
    -Location $Location `
    -SecurityRules $AllowHttp,$AllowSsh

$Vnet = Get-AzVirtualNetwork -Name $VNetName -ResourceGroupName $ResourceGroupName

Set-AzVirtualNetworkSubnetConfig -VirtualNetwork $Vnet -Name $SubnetName `
-AddressPrefix "10.1.1.0/24" -NetworkSecurityGroup $Nsg `

Set-AzVirtualNetwork -VirtualNetwork $Vnet
