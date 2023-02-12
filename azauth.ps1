# Run this command to generate Azure CLI credentials for authenticating with GitHub Actions

param(
    [string]$subID = ''
)
#Write-Host $subID
az ad sp create-for-rbac --name "syrHub" --role contributor `
                            --scopes /subscriptions/$subID `
                            --sdk-auth