$path = "c:\Users\kman\Documents\GitHub\peninsula21.github.io\index.html"
$html = Get-Content $path -Raw
$html = $html -replace '(?s)<link rel="icon" type="image/png"\s+href="data:image/png;base64,[^"]+">', '<link rel="icon" type="image/png" href="favicon.png">'
$html = $html -replace '<img src="https://github.com/peninsula21/peninsula21.github.io/blob/main/logo.png\?raw=true"', '<img src="images/Logo.png"'
Set-Content -Path $path -Value $html -Encoding UTF8
Write-Output "HTML updated successfully."
