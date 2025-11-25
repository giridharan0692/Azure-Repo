$PublicIpName = "PublicIP1"
$ResourceGroupName = "AZ-EXAMPLE-RG1"
$Location = "EastUS"
$NicName = "NIC1" # Existing NIC name
$IpconfigName = "ipconfig01" # Existing IP configuration name on the NIC


# Create a new public IP address
$pip = New-AzPublicIpAddress -Name $PublicIpName `
-ResourceGroupName $ResourceGroupName `
-Location $Location `
-AllocationMethod Static `
-Sku Standard `

# Get the existing NIC
$NIC = Get-AzNetworkInterface -Name $NicName -ResourceGroupName $ResourceGroupName

# Associate the public IP with the NIC's IP configuration
Set-AzNetworkInterfaceIpConfig -Name $IpconfigName `
-NetworkInterface $NIC `
-PublicIpAddress $pip `
| Set-AzNetworkInterface