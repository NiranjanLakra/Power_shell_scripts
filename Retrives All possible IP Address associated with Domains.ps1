# Retrives All possible IP Address associated with Domains listed in Domains.txt
# and places inside Ips.txt file on the same location

$files = Get-Location 
$Domains = Get-Content -Path $files\Domains.txt 
try{ 
New-Item $files\IPs.txt 
} 
catch{ 
Write-Host "File Exists" 
} 
while(1 -gt 0){ 
$ExistingIPs = Get-Content -path $files\IPs.txt 
function IPtester($D_name){ 
$data = [System.Net.Dns]::GetHostAddresses($D_name) | ForEach-Object { $_.IPAddressToString } | 
Where-Object { $ExistingIPs -notcontains $_ } 
add-Content -path $files\IPs.txt $data 
} 
foreach($data in $Domains) 
{ 
 Write-Host "Testing $data" 
 IPtester($data) 
 
} 
$len = (Get-Content $files\IPs.txt).length 
Write-Host "IP Address Count: $len" 
Start-Sleep -Seconds 2 
} 