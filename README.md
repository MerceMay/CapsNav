# CapsNav

Turn CapsLock into a navigation modifier key. No more reaching for arrow keys.

## Requirements

- [AutoHotkey v2](https://www.autohotkey.com/download/)

## Usage

Double-click `CapsNav.ahk` to run. On first launch, a startup shortcut is created automatically so it runs on every boot.

## Key Bindings

Hold **CapsLock** as a modifier. Add **Shift** to the same key to select instead of move.

| Key | Move | + Shift (Select) |
|-----|------|-----------------|
| `CapsLock + E` | Up | Select up |
| `CapsLock + S` | Left | Select left |
| `CapsLock + D` | Down | Select down |
| `CapsLock + F` | Right | Select right |
| `CapsLock + A` | Word left | Select word left |
| `CapsLock + G` | Word right | Select word right |
| `CapsLock + W` | Line start | Select to line start |
| `CapsLock + R` | Line end | Select to line end |

**CapsLock alone** still toggles Caps Lock as normal.

## Features

- **Auto startup** — creates a shortcut in the Windows startup folder on first run
- **Auto suspend in games** — detects fullscreen windows and suspends all hotkeys automatically; resumes when you alt-tab out
