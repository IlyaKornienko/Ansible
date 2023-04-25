$adapterName = "Intel(R) PRO/1000 PL Network Connection"
$previousStatus = Get-NetAdapter -Name $adapterName | Select-Object -ExpandProperty Status

while ($true) {
    $currentStatus = Get-NetAdapter -Name $adapterName | Select-Object -ExpandProperty Status
    if ($currentStatus -ne $previousStatus) {
        # Adapter status has changed, execute your desired command here
        Write-Host "Network adapter status has changed to $currentStatus"
        # Your command goes here
    }
    $previousStatus = $currentStatus
    Start-Sleep -Seconds 1
}