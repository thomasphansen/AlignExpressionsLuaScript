# AlignExpressionsLuaScript

A Lua plugin for Finale 27.x that aligns selected musical expressions to the leftmost vertical position.

## Description

This plugin helps you quickly align multiple musical expressions (dynamics, tempo markings, text expressions, etc.) to the leftmost expression in your selection. This is useful when you want to ensure consistent vertical alignment of expressions across multiple measures or staves.

The plugin will:
- Find the leftmost vertical position among all selected expressions
- Align all selected expressions to that position
- Display a confirmation message showing how many expressions were aligned

## Installation

1. Download the `AlignExpressionsToLeftmost.lua` file
2. Place it in your JW Lua script folder:
   - **Windows**: `C:\Users\[YourUsername]\Documents\JW Lua Scripts\`
   - **macOS**: `~/Documents/JW Lua Scripts/`
3. Restart Finale if it's currently running

## Usage

1. Open your score in Finale 27.x
2. Select the region containing the expressions you want to align (click and drag across the measures and staves)
3. Open the JW Lua plugin menu: **Plug-ins → JW Lua**
4. Find and run **Align Expressions (Leftmost)** from the script list
5. The plugin will align all expressions in the selected region to the leftmost position
6. A confirmation dialog will appear showing how many expressions were aligned

## Requirements

- Finale 27.x or compatible version
- [JW Lua plugin](https://robertgpatterson.com/-fininfo/jwlua/jwlua.html) installed

## Notes

- If no expressions are found in the selected region, you'll see a "Nothing to Align" message
- The plugin only affects expressions within the selected region
- Changes can be undone using Finale's standard Undo command (Ctrl+Z / Cmd+Z)
