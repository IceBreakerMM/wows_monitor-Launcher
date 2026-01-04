Add-Type -AssemblyName System.Windows.Forms
$configFile = Join-Path $PSScriptRoot "monitor_path.txt"

# 1. Path Setup
if (Test-Path $configFile) {
    $monitorPath = Get-Content $configFile
} else {
    [System.Windows.Forms.MessageBox]::Show("First Time Setup:`n`nPlease select your 'wows-monitor.exe'.", "WoWS Launcher Setup")
    $FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ 
        InitialDirectory = [System.Environment]::GetFolderPath("Programs")
        Filter = "Executable (*.exe)|*.exe"
    }
    if ($FileBrowser.ShowDialog() -eq "OK") {
        $monitorPath = $FileBrowser.FileName
        $monitorPath | Out-File $configFile -Encoding ASCII
    } else { exit }
}

# 2. Launch Sequence
$apiPath = Join-Path $PSScriptRoot "wgc_api.exe"

if ($monitorPath -and (Test-Path $monitorPath)) { Start-Process $monitorPath }

if (Test-Path $apiPath) { 
    Start-Process $apiPath -ArgumentList "--open" 
} else {
    [System.Windows.Forms.MessageBox]::Show("Error: wgc_api.exe not found.")
    exit
}

# 3. BRIDGE: Wait for WGC to actually start up
# This prevents the script from skipping straight to "Game not found -> Cleanup"
$wgcStarted = $false
$wgcTimeout = (Get-Date).AddSeconds(30)
while (-not $wgcStarted -and (Get-Date) -lt $wgcTimeout) {
    if (Get-Process "wgc" -ErrorAction SilentlyContinue) { $wgcStarted = $true }
    Start-Sleep -Seconds 1
}

# 4. Wait for the Game Engine (WorldOfWarships64)
$exeName = $null
$gameTimeout = (Get-Date).AddMinutes(2)

while ($null -eq $exeName -and (Get-Date) -lt $gameTimeout) {
    if (Get-Process "WorldOfWarships64" -ErrorAction SilentlyContinue) { $exeName = "WorldOfWarships64" }
    elseif (Get-Process "WorldOfWarships" -ErrorAction SilentlyContinue) { $exeName = "WorldOfWarships" }
    
    # If WGC was closed before the game started (user cancelled), exit early
    if (-not (Get-Process "wgc" -ErrorAction SilentlyContinue) -and $null -eq $exeName) {
        break
    }
    Start-Sleep -Seconds 2
}

# 5. Monitoring Phase
if ($null -ne $exeName) {
    while (Get-Process $exeName -ErrorAction SilentlyContinue) {
        Start-Sleep -Seconds 5
    }
}

# 6. Final Cleanup
Stop-Process -Name "wows-monitor" -Force -ErrorAction SilentlyContinue
Stop-Process -Name "wgc" -Force -ErrorAction SilentlyContinue