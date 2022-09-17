# https://learn.microsoft.com/en-us/azure/azure-functions/create-first-function-cli-powershell?tabs=azure-powershell%2Cbrowser

$resourceGroup = "SubscriptionAutomation"
$location = "centralus"
$storageAccountName = "subscriptionautomationdemostorage"
$functionAppName = "subscriptionautomationdemofunction"

# Resource group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Storage account
New-AzStorageAccount -ResourceGroupName $resourceGroup -Name $storageAccountName -SkuName "Standard_LRS" -Location $location

# Function app
New-AzFunctionApp -Name $functionAppName -ResourceGroupName $resourceGroup -StorageAccount $storageAccountName -Runtime "PowerShell" -FunctionsVersion 4 -Location $location