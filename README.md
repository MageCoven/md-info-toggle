# md-info-toggle

An AutoHotkey script that can toggle the information overlay in Yu-Gi-Oh! Master Duel. It can occasionally be a bit unresponsive and miss button presses, this does seem to occurr more frequently outside of Master Duel, so stopping the script by either Ctrl+Esc or right clicking the system tray and exiting is recommended when not inside Master Duel.

## Download

> **Note**
> This requires AutoHotkey being installed and therefor only works on Windows.

-   Download AutoHotkey
-   Download the script (md.ahk)
-   Double click on the script to run it
-   Done!

## Keybinds

| Key                 |                                                                    |
| ------------------- | ------------------------------------------------------------------ |
| Ctrl+Esc            | Exit the script, use this if something goes wrong with the script. |
| Middle Mouse Button | Toggle the information overlay.                                    |

## How it works

The script detects when the middle mouse button is pressed and continues to hold it until it is pressed again. Since holding down the middle mouse button will prevent left and right clicking, it is temporarily released when using left and right mouse buttons.
