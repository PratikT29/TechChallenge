Connect-Azlogin

$storageContext = New-AzStorageContext -StorageAccountName "<AccntName>" -StorageAccountKey "<AccntKey>"

$allContainers = Get-AzStorageContainer -Context $storageContext


foreach($container in $allContainers){
    $metadata = $container.BlobContainerProperties.Metadata
    $metadata | ConvertTo-Json -Depth 99

    Write-Host "Key1:" $metadata.Key1.value
}

