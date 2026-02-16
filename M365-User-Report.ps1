# Connect to Microsoft Graph
Connect-MgGraph -Scopes "User.Read.All"

# Get all users
$users = Get-MgUser -All

# Select relevant properties
$report = $users | Select-Object DisplayName, UserPrincipalName, AccountEnabled

# Export to CSV
$report | Export-Csv -Path ".\M365UserReport.csv" -NoTypeInformation

Write-Host "Report exported successfully."
