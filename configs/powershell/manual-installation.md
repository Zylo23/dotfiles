# Manual Installation Guide

This guide will walk you through the process of manually installing and configuring various PowerShell modules and Oh-My-Posh for a customized terminal experience.

## Step 1: Locate or Create Your PowerShell Profile

First, you need to find your PowerShell profile. Open PowerShell and run the following command:

```powershell
$PROFILE
```

- If the command returns a path, note it down. This is the location of your PowerShell profile script.
- If the command does not return a path, you need to create a new PowerShell profile. You can create it by running:

```powershell
New-Item -Path $PROFILE -ItemType File -Force
```

## Step 2: Install PowerShell Modules

Next, install a few essential PowerShell modules. Run the following commands in your PowerShell terminal:

```powershell
Install-Module -Name PSFzf -Scope CurrentUser -Force
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```

## Step 3: Install Oh-My-Posh

Oh-My-Posh can be installed using different package managers. Choose your preferred package manager and follow the corresponding instructions:

- **winget**

  ```powershell
  winget install JanDeDobbeleer.OhMyPosh -s winget
  ```

- **scoop**

  ```powershell
  scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
  ```

- **chocolatey**

  ```powershell
  choco install oh-my-posh
  ```

- **manual**
  ```powershell
  Set-ExecutionPolicy Bypass -Scope Process -Force
  Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
  ```

## Step 4: Configure Your PowerShell Profile

Now, configure your PowerShell profile with the necessary settings. First, download the configuration files from the provided links.

- **PowerShell Profile Script**:
  [profile.ps1](https://github.com/Zylo23/dotfiles/blob/main/configs/powershell/profile.ps1)

- **Oh-My-Posh Theme File**:
  [zylo.omp.json](https://github.com/Zylo23/dotfiles/blob/main/configs/powershell/zylo.omp.json)

### Add Configuration to Your PowerShell Profile

1. Open your PowerShell profile script in a text editor. You can do this by running:

   ```powershell
   code $PROFILE
   ```

2. Copy the contents of the `profile.ps1` file from the GitHub link and paste them into your PowerShell profile script.

3. Set the path for the Oh-My-Posh theme file. Add the following line to your PowerShell profile script, replacing `$themePath` with the path where you saved the `zylo.omp.json` file:

   ```powershell
   $themePath = "$env:POSH_THEMES_PATH\zylo.omp.json"
   ```

4. Save and close the PowerShell profile script.

## Step 5: Restart Your Terminal

Finally, restart your PowerShell terminal to apply the changes.

You should now have a customized PowerShell terminal with enhanced features and a stylish prompt. Enjoy your new setup!
