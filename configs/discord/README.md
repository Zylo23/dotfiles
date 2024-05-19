# Discord Configuration

This directory contains the configuration files for customizing Discord using custom CSS. You can apply these customizations using either Vencord or BetterDiscord.

## Using Custom CSS with Vencord or Vesktop

To use custom CSS with Vencord, follow these steps:

### Installation and Setup

1. **Install Vencord**: Follow the instructions on the [Vencord FAQ](https://vencord.dev/faq/#How-do-I-install-Vencord?) to install Vencord.
2. **Open User Settings**: Open Discord and navigate to User Settings.
3. **Find Themes**: Locate the "Themes" section under the "Vencord" category in the sidebar.

### Methods to Import Custom CSS

You have three methods to import custom CSS:

#### Local Themes

**Method 1: Using the Themes Folder**

1. Click on the "Open Themes Folder" button.
2. Paste the `everblush.theme.css` file into the opened folder. This file can be found in the [`configs/discord`](https://github.com/Zylo23/dotfiles/tree/main/configs/discord) directory of this repository.

**Method 2: Using Quick Edit CSS**

1. Open the [`configs/discord/everblush.theme.css`](https://github.com/Zylo23/dotfiles/blob/main/configs/discord/everblush.theme.css) file.
2. Copy the contents of the file.
3. Paste the copied contents into the Quick Edit CSS box in Vencord.

#### Online Themes

**Method 3: Using Online Themes**

1. Copy the URL of the raw `everblush.theme.css` file from the GitHub repository.
   - URL: `https://raw.githubusercontent.com/Zylo23/dotfiles/main/configs/discord/everblush.theme.css`
2. Paste the copied URL into the "Online Themes" box in Vencord.

## Using Custom CSS with BetterDiscord

To use custom CSS with BetterDiscord, follow these steps:

### Installation and Setup

1. **Install BetterDiscord**: Follow the instructions on the [BetterDiscord Installation Guide](https://docs.betterdiscord.app/users/getting-started/installation) to install BetterDiscord.
2. **Download the Theme File**: Download the `everblush.theme.css` file from the GitHub repository.
   - URL: `https://github.com/Zylo23/dotfiles/blob/main/configs/discord/everblush.theme.css`
3. **Move the Theme File**: Move the downloaded `everblush.theme.css` file to the BetterDiscord themes folder:
   - Path: `%appdata%\betterdiscord\themes`

## Using Custom CSS with Stylus

To use custom CSS with Stylus, follow these steps:

1. **Install Stylus**: Install the Stylus browser extension from [GitHub](https://github.com/openstyles/stylus?tab=readme-ov-file#releases).
2. **Open Userstyles**: Visit the [Everblush Stylus styles for Discord](https://github.com/Zylo23/Everblush/tree/main/userstyles/styles/discord) repository.
3. **Install the Style**:
   - Click on the Stylus Install badge to install the Everblush Discord style.

## Enabling the Theme

After adding the theme using one of the methods above, ensure to enable the theme in Discord:

- If you used the **Online Themes** or **Quick Edit CSS** methods, the theme should be applied automatically.
- If you used the **Local Themes** method (either Vencord's Themes Folder or BetterDiscord's themes folder), you might need to enable the theme manually in the themes section of the respective application.

By following these steps, you can enjoy a customized Discord experience with the Everblush theme.