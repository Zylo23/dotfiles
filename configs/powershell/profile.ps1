Import-Module PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

Import-Module Terminal-Icons

[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\zylo.omp.json" | Invoke-Expression

Set-Alias lt tree
Set-Alias ll ls
Set-Alias l ls
Set-Alias nf New-Item -Force
Set-Alias nd mkdir
Set-Alias rm Remove-Item -Force -Recurse
Set-Alias rd Remove-Item -Force -Recurse
Set-Alias vim nvim
Set-Alias c Clear-Host
Set-Alias g git

function search {
    param(
        [Parameter(Mandatory = $true)]
        [string]$query
    )
    Start-Process "https://www.google.com/search?q=$query"
    Write-Host "[INFO]" -ForegroundColor Green -NoNewline
    Write-Host " Searching in browser" -ForegroundColor White
}

function work {
    Set-Location "E:\Workspace" | Out-Null
}

function update-posh {
    try {
        winget upgrade JanDeDobbeleer.OhMyPosh -s winget
    }
    catch {
        Write-Host "[ERROR]" -ForegroundColor Red -NoNewline
        Write-Host " Update-Posh failed" -ForegroundColor White
    }
}

function rmrf {
    param(
        [Parameter(Mandatory = $true)]
        [string]$path
    )
    
    $confirmation = Read-Host "Are you sure you want to delete $path? [y/n]"
    if ($confirmation -eq 'y') {
        Remove-Item -Recurse -Force $path
    }
}

function which {
    param(
        [Parameter(Mandatory = $true)]
        [string]$command
    )
    
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
