# Terminal Configuration

This directory contains the configuration files for customizing your terminal environment. The main file, `schemes.json`, defines the color schemes used in your terminal, and Nerd Fonts are used to display icons in the prompt.

## Color Scheme Configuration

The `schemes.json` file contains the color scheme definitions for your terminal. Below is an example of the color scheme configuration:

```json
{
  "name": "Everblush",
  "cursorColor": "#dadada",
  "selectionBackground": "#31363a",
  "foreground": "#dadada",
  "background": "#141b1e",
  "black": "#232a2d",
  "red": "#e57474",
  "green": "#8ccf7e",
  "yellow": "#e5c76b",
  "blue": "#67b0e8",
  "purple": "#c47fd5",
  "cyan": "#6cbfbf",
  "white": "#b3b9b8",
  "brightBlack": "#2d3437",
  "brightRed": "#ef7e7e",
  "brightGreen": "#96d988",
  "brightYellow": "#f4d67a",
  "brightBlue": "#71baf2",
  "brightPurple": "#ce89df",
  "brightCyan": "#67cbe7",
  "brightWhite": "#bdc3c2"
}
```

Thank [Everblush](https://github.com/Everblush/terminal-emulators) for creating a dark, vibrant, and beautiful color scheme 💖.

## Nerd Fonts

Nerd Fonts are used to display icons in the prompt. They provide a large collection of glyphs (icons) that are useful for customizing your terminal prompt.

You can download and install Nerd Fonts from the following link: [Nerd Fonts Downloads](https://www.nerdfonts.com/font-downloads).

After downloading and installing the Nerd Fonts, configure your terminal to use one of these fonts to take advantage of the icons in your prompt.

## Usage

1. **Color Scheme**: Copy the contents of the `schemes.json` file and paste it into your terminal's configuration file where the color schemes are defined.
2. **Nerd Fonts**: Install a Nerd Font from the [Nerd Fonts website](https://www.nerdfonts.com/font-downloads) and set your terminal to use the installed Nerd Font.

3. **Configuration Example**:
   - **Windows Terminal**:
     - Open the `settings.json` file (usually found in the settings menu).
     - Add the color scheme to the `"schemes"` section.
     - Set the `"fontFace"` to a Nerd Font in the profiles section.
   - **Other Terminals**:
     - Follow the terminal's documentation to apply the color scheme and set the font.

By following these steps, you will have a customized terminal with a visually appealing color scheme and enhanced functionality through Nerd Font icons.
