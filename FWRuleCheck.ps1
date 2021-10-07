$Rules = Get-NetFirewallRule -All | Where-Object {$profiles.sid -notcontains $_.owner -and $_.owner }
$rules2 = Get-NetFirewallRule -All -PolicyStore ConfigurableServiceStore | Where-Object { $profiles.sid -notcontains $_.owner -and $_.owner }
$total = $rules.count + $rules2.count
Write-Host "Total" $total "Firewall Rules"