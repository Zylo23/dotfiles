# VSCode Configuration

This directory contains the configuration files for customizing your VSCode environment. The `settings.json` file is used to define various settings, including the theme and editor preferences.

## VSCode Settings

Here is the content of your `settings.json` file:

```json
{
  "editor.cursorBlinking": "phase",
  "editor.minimap.enabled": false,
  "editor.renderWhitespace": "none",
  "editor.tabCompletion": "on",
  "editor.cursorSurroundingLines": 15,
  "editor.cursorStyle": "line",
  "window.commandCenter": false,
  "workbench.layoutControl.enabled": false,
  "workbench.iconTheme": "material-icon-theme",
  "workbench.colorTheme": "Everblush Theme",
  "accessibility.signals.sounds.volume": 0,
  "editor.accessibilitySupport": "off",
  "window.menuBarVisibility": "compact"
}
```

### Settings Definitions

- **editor.cursorBlinking**: Controls the cursor blinking behavior.
- **editor.minimap.enabled**: Toggles the minimap feature.
- **editor.renderWhitespace**: Controls how whitespace is rendered.
- **editor.tabCompletion**: Enables tab completion.
- **editor.cursorSurroundingLines**: Number of surrounding lines to keep visible around the cursor.
- **editor.cursorStyle**: Sets the cursor style to a line.
- **window.commandCenter**: Disables the command center window.
- **workbench.layoutControl.enabled**: Disables layout control.
- **workbench.iconTheme**: Sets the icon theme to "material-icon-theme".
- **workbench.colorTheme**: Sets the color theme to "Everblush Theme".
- **accessibility.signals.sounds.volume**: Sets the volume of accessibility signals to 0.
- **editor.accessibilitySupport**: Disables accessibility support.
- **window.menuBarVisibility**: Sets the menu bar visibility to compact.

## Theme

My custom theme, "Everblush Theme," is available in the following repository:

[Everblush Theme](https://github.com/pyyupsk/Everblush/tree/main/vscode)

To install and use the theme, follow these steps:

1. **Build from Source**:

   1. Navigate to the [Everblush Theme repository](https://github.com/pyyupsk/Everblush/tree/main/vscode).
   2. Clone this repository to your computer.

   ```bash
   git clone https://github.com/pyyupsk/Everblush.git
   ```

   3. Navigate to the `vscode` directory.

   ```bash
   cd Everblush/vscode
   ```

   4. Install dependencies.

   ```bash
   npm i -g vsce
   ```

   5. Build the `.vsix` file.

   ```bash
   npm run build
   ```

   This command will create a `.vsix` file in the `vscode` directory.

2. **Install from VSIX**:

   1. Open VSCode.
   1. Open the Command Palette (`Ctrl+Shift+P` on Windows/Linux or `Cmd+Shift+P` on macOS).
   1. Type `Extensions: Install from VSIX...` and select it.
   1. Select the `.vsix` file you created in the `vscode` directory.

3. **Apply Theme**:

   - Press `Ctrl+K Ctrl+T` (Cmd+K Cmd+T on macOS) to open the theme selector.
   - Select "Everblush Theme" from the list of installed themes.

4. **Material Icon Theme** (optional):
   - Go to the [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) page.
   - Click the "Install" button.
     - The vscode will navigate to the marketplace and install the extension.
     - Click on the "Set File Icon Theme" button.

By following these steps, you can configure VSCode with your preferred settings and apply your custom "Everblush Theme" for a personalized coding experience.
