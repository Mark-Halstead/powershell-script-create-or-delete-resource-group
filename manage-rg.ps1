$resourceGroupName = Read-Host "Enter rg name"
$location = Read-Host "enter location"


# creation of rg
function Create-ResourceGroup {
    Write-Host "Creating resource group '$resourceGroupName' in location '$Location'..."
    New-AzResourceGroup -Name $resourceGroupName -Location $location
    Write-Host "resource group '$resourceGroupName' created."
}





# deletion of resource group
function Delete-ResourceGroup {
    Write-Host "Deleting resource group '$resourceGroupName'..."
    Remove-AzResourceGroup -Name $resourceGroupName -Force
    Write-Host "'$resourceGroupName' deleted"
}



# choice of delete or create
Write-Host "choose:"
Write-Host "1. create rg"
Write-Host "2. delete rg"
$choice = Read-Host "enter choice"

if ($choice -eq 1) {
    Create-ResourceGroup
} elseif ($choice -eq 2) {
    Delete-ResourceGroup
} else {
    Write-Host "invalid..."
}

Write-Host "script done"
