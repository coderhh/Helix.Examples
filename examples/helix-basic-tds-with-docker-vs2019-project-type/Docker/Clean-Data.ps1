Get-ChildItem -Path (Join-Path $PSScriptRoot "\data") -Directory | ForEach-Object {
    $dataPath = $_.FullName
    
    if($dataPath -like '*cm*'){
        Get-ChildItem -Path $dataPath -Exclude ".gitkeep" | ForEach-Object {
            if($_.FullName.Contains('wwwroot')){
                Get-ChildItem -Path $_.FullName  -Recurse | ForEach-Object {
                    if(!$_.FullName.Contains('_DEV')){
                        Remove-Item  -Path $_.FullName -Force -Recurse -Verbose
                    }
                }
            }
        }
    }else{
    Get-ChildItem -Path $dataPath -Exclude ".gitkeep" -Recurse | Remove-Item -Force -Recurse -Verbose
    }
}