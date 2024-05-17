# PowerShell Configuration

This directory contains the necessary configuration files and scripts to set up a customized PowerShell environment. Follow the steps below to get started.

## Contents

- [install.ps1](install.ps1): Automated installation script.
- [manual-installation.md](manual-installation.md): Manual installation guide.
- [profile.ps1](profile.ps1): PowerShell profile script.
- [zylo.omp.json](zylo.omp.json): Oh-My-Posh theme configuration.

## Automated Installation

For a quick setup, run the `install.ps1` script. This script will handle everything from installing necessary modules to configuring your PowerShell profile.

### Steps

1. **Open PowerShell with administrative privileges.**
2. **Navigate to the directory containing `install.ps1`:**
   ```powershell
   cd .\dotfiles\configs\powershell\
   ```
3. **Run the installation script:**
   ```powershell
   .\install.ps1
   ```

This script will:

- Find or create your PowerShell profile.
- Install required modules: `PSFzf`, `PSReadLine`, and `Terminal-Icons`.
- Install Oh-My-Posh.
- Configure your PowerShell profile with custom settings and themes.

## Manual Installation

If you prefer to manually install and configure your PowerShell environment, follow the instructions in [manual-installation.md](manual-installation.md).

### Key Steps

1. **Locate or create your PowerShell profile.**
2. **Install necessary PowerShell modules:**
   ```powershell
   Install-Module -Name PSFzf -Scope CurrentUser -Force
   Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
   Install-Module -Name Terminal-Icons -Repository PSGallery -Force
   ```
3. **Install Oh-My-Posh** using a package manager of your choice (winget, scoop, chocolatey) or manually.
4. **Configure your PowerShell profile** with the settings from `profile.ps1` and set up the Oh-My-Posh theme using `zylo.omp.json`.

For detailed instructions, refer to [manual-installation.md](manual-installation.md).

## Configuration Files

### profile.ps1

The `profile.ps1` script contains custom aliases, functions, and module imports to enhance your PowerShell experience. It includes:

- Aliases for common commands.
- Functions for searching the web, navigating to your workspace, updating Oh-My-Posh, and more.
- Initialization of Oh-My-Posh with the custom theme.

### zylo.omp.json

This is the theme configuration file for Oh-My-Posh. It defines the appearance of your PowerShell prompt, including colors, icons, and layout.

## Customization

Feel free to customize `profile.ps1` and `zylo.omp.json` to suit your preferences. You can modify aliases, functions, and theme settings to create a personalized PowerShell environment.