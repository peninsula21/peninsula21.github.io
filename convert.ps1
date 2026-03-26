Add-Type -AssemblyName System.Drawing
$path = 'C:\Users\kman\.gemini\antigravity\brain\cbdff8c0-ca32-42f8-b643-ee729735720d\media__1774492835281.png'
$img = [System.Drawing.Image]::FromFile($path)
$bmp = new-object System.Drawing.Bitmap($img)
$img.Dispose()

for ($x = 0; $x -lt $bmp.Width; $x++) {
    for ($y = 0; $y -lt $bmp.Height; $y++) {
        $p = $bmp.GetPixel($x, $y)
        $a = $p.R
        $newColor = [System.Drawing.Color]::FromArgb($a, 255, 255, 255)
        $bmp.SetPixel($x, $y, $newColor)
    }
}
$bmp.Save('c:\Users\kman\Documents\GitHub\peninsula21.github.io\favicon.png', [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Save('c:\Users\kman\Documents\GitHub\peninsula21.github.io\images\Logo.png', [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
Write-Output 'Image processed and saved'
