$FileInput = (Get-Content -Path .\BlankyBlankPasswords.jet) | ConvertFrom-Json
$temp = $FileInput.content | Where-Object { $_.us -ne $true }

$OutputContent = New-Object -TypeName PSObject
$OutputContent | Add-Member -MemberType NoteProperty -Name content -Value $temp 
$OutputContent | ConvertTo-Json -Depth 4 | Out-File -Path .\output.json