
function Get-KeyValue{
param($empname, $key)

    $Content = $JSON | ConvertFrom-Json

    $Output = foreach( $emp in $Content.$empname.psobject.Properties ) {
        [PSCustomObject]@{

            keyValue = $key.Valuekey
        }
    }
    $Output | Format-List

}
