$path = "c:\Users\kman\Documents\GitHub\peninsula21.github.io\index.html"
$text = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
$win1252 = [System.Text.Encoding]::GetEncoding(1252)
$bytes = $win1252.GetBytes($text)
[System.IO.File]::WriteAllBytes($path, $bytes)
Write-Output "File Encoding Fixed"
