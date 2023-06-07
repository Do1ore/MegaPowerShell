$project_path = "C:\Users\vladx\source\repos\CleanWebAPI\CleanWebAPI"

$tests_path = "C:\Users\vladx\source\repos\CleanWebApi.Tests"


Write-Information "Build starts"
Set-Location $project_path
dotnet build  $project_path

Write-Host  "Testing starts"

dotnet test $tests_path


Write-Host  "Build starts"

dotnet publish $project_path --configuration 'Debug'

Get-Content -path C:\Users\vladx\source\repos\CleanWebAPI\CleanWebAPI\appsettings.json | ConvertFrom-Json | ConvertTo-Json

Write-Host "Enter any can to close..."
$host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") | out-null