# Declare variables at the top
$ResourceGroupName = "myResourceGroup"  # Change this to your desired resource group name
$Location = "uksouth"  # Change this to your desired Azure location

# Login to Azure
# Write-Host "Logging into Azure..."
# Connect-AzAccount

# Function to create a new resource group
function Create-ResourceGroup {
    Write-Host "Creating resource group '$ResourceGroupName' in location '$Location'..."
    New-AzResourceGroup -Name $ResourceGroupName -Location $Location
    Write-Host "Resource group '$ResourceGroupName' created."
}

# Function to delete a resource group
function Delete-ResourceGroup {
    Write-Host "Deleting resource group '$ResourceGroupName'..."
    Remove-AzResourceGroup -Name $ResourceGroupName -Force
    Write-Host "Resource group '$ResourceGroupName' deleted."
}

# Simple menu
Write-Host "Choose an option:"
Write-Host "1. Create a Resource Group"
Write-Host "2. Delete a Resource Group"
$choice = Read-Host "Enter your choice"

if ($choice -eq 1) {
    Create-ResourceGroup
} elseif ($choice -eq 2) {
    Delete-ResourceGroup
} else {
    Write-Host "Invalid choice. Exiting."
}

Write-Host "Script finished."

