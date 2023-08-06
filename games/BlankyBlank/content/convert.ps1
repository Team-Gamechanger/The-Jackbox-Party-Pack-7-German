set-location -Path D:\Erizzle-Web\GitHub\The-Jackbox-Party-Pack-7-German\games\BlankyBlank\content
$FileInput = Get-Content -Path .\FULLBlankyBlankPasswords.jet -Encoding UTF8 | ConvertFrom-Json
$temp = $FileInput.content | Where-Object { $_.us -ne $true }

$OutputContent = New-Object -TypeName PSObject
$OutputContent | Add-Member -MemberType NoteProperty -Name content -Value $temp 
$OutputContent | ConvertTo-Json -Depth 4 | Out-File -FilePath .\output.json -Encoding UTF8