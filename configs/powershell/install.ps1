# Logging function
function Write-Log {
    param (
        [string]$Message,
        [string]$Status = "INFO",
        [string]$LogFile = "install_log.txt"
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logMessage = "$timestamp - [$Status] - $Message"
    Add-Content -Path $LogFile -Value $logMessage
    
    switch ($Status) {
        "INFO" { Write-Host $logMessage -ForegroundColor White }
        "SUCCESS" { Write-Host $logMessage -ForegroundColor Green }
        "ERROR" { Write-Host $logMessage -ForegroundColor Red }
        default { Write-Host $logMessage -ForegroundColor White }
    }
}

# Log start
Write-Log "Script execution started." "INFO"

# Find PowerShell profile
Write-Log "Finding PowerShell profile..." "INFO"
$ProfilePath = $PROFILE
if (-not $ProfilePath) {
    $ProfilePath = $PROFILE.CurrentUserAllHosts
    if (-not (Test-Path -Path $ProfilePath)) {
        try {
            Write-Log "Profile path not found, creating new profile path..." "INFO"
            New-Item -Path $ProfilePath -ItemType File -Force
            Write-Log "Profile path created at $ProfilePath." "SUCCESS"
        }
        catch {
            Write-Log "Failed to create profile path: $_" "ERROR"
        }
    }
}
Write-Log "PowerShell profile located at $ProfilePath." "SUCCESS"

# Install PowerShell Modules
try {
    Write-Log "Installing PSFzf module..." "INFO"
    Install-Module -Name PSFzf -Scope CurrentUser -Force
    Write-Log "PSFzf module installed." "SUCCESS"
}
catch {
    Write-Log "Failed to install PSFzf module: $_" "ERROR"
}

try {
    Write-Log "Installing PSReadLine module..." "INFO"
    Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
    Write-Log "PSReadLine module installed." "SUCCESS"
}
catch {
    Write-Log "Failed to install PSReadLine module: $_" "ERROR"
}

try {
    Write-Log "Installing Terminal-Icons module..." "INFO"
    Install-Module -Name Terminal-Icons -Repository PSGallery -Force
    Write-Log "Terminal-Icons module installed." "SUCCESS"
}
catch {
    Write-Log "Failed to install Terminal-Icons module: $_" "ERROR"
}

# Install Oh-My-Posh
try {
    Write-Log "Setting execution policy and installing Oh-My-Posh..." "INFO"
    Set-ExecutionPolicy Bypass -Scope Process -Force
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
    Write-Log "Oh-My-Posh installed." "SUCCESS"
}
catch {
    Write-Log "Failed to install Oh-My-Posh: $_" "ERROR"
}

# Write the profile
$profileScript = "https://github.com/Zylo23/dotfiles/raw/main/configs/powershell/profile.ps1"
try {
    Write-Log "Downloading profile script from $profileScript..." "INFO"
    Invoke-WebRequest -Uri $profileScript -OutFile $ProfilePath -UseBasicParsing
    Write-Log "Profile script written to $ProfilePath." "SUCCESS"
}
catch {
    Write-Log "Failed to download profile script: $_" "ERROR"
}

# Find Oh-My-Posh theme
Write-Log "Checking Oh-My-Posh theme path..." "INFO"
$themePath = "$env:POSH_THEMES_PATH\zylo.omp.json"
if (-not (Test-Path -Path $env:POSH_THEMES_PATH)) {
    try {
        Write-Log "Theme path not found, creating new theme path..." "INFO"
        New-Item -Path $env:POSH_THEMES_PATH -ItemType Directory -Force
        Write-Log "Theme path created at $env:POSH_THEMES_PATH." "SUCCESS"
    }
    catch {
        Write-Log "Failed to create theme path: $_" "ERROR"
    }
}
Write-Log "Theme path located at $env:POSH_THEMES_PATH." "SUCCESS"

# Write Oh-My-Posh style
$themeScript = "https://github.com/Zylo23/dotfiles/raw/main/configs/powershell/zylo.omp.json"
try {
    Write-Log "Downloading theme script from $themeScript..." "INFO"
    Invoke-WebRequest -Uri $themeScript -OutFile $themePath -UseBasicParsing
    Write-Log "Theme script written to $themePath." "SUCCESS"
}
catch {
    Write-Log "Failed to download theme script: $_" "ERROR"
}

# Log completion
Write-Log "Script execution completed." "INFO"
