# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This repository is a personal collection of everyday scripts, configuration examples, and tool snippets. It is optimized for quick lookup and copying rather than for a unified application architecture. Subdirectories are intentionally loosely coupled.

## Structure

- `automator/` contains macOS Finder/Automator quick-action zsh scripts.
  - `alacritty.sh` opens the selected file/folder location in Alacritty.
  - `opencode.sh` opens the selected location in Alacritty and starts `opencode`.
  - Both scripts rely on macOS GUI automation, `/Applications/Alacritty.app`, `osascript`, `pbcopy`, and `pbpaste`.
- `pot-app-translate-plugin/` contains a Pot-App DeepSeek translation plugin.
  - Runtime plugin files are under `pot-app-translate-plugin/deepseek/`.
  - `main.js` implements `async function translate(text, from, to, options)` using Pot-App's `utils.tauriFetch` API.
  - `info.json` defines plugin metadata, config fields, model options, and language mappings.
  - `.github/workflows/build.yml` is intended for the plugin project and packages `info.json`, `main.js`, and the icon into a `.potext` file.
- `tips/` contains personal reference configs and notes.
  - `init.lua` is a Neovim baseline config example.
  - `nvim.md` is a Vim/Neovim quick reference.
  - `zshrc` is a zsh config example with environment-specific values represented as placeholders.

## Common Commands

There is no root package manager, test runner, or unified build system in this repository.

Validate the Pot-App plugin manifest:

```sh
python3 -m json.tool pot-app-translate-plugin/deepseek/info.json >/dev/null
```

Check zsh syntax for the macOS scripts and zsh example:

```sh
zsh -n automator/alacritty.sh
zsh -n automator/opencode.sh
zsh -n tips/zshrc
```

Manually package the Pot-App plugin from the current repository layout:

```sh
cd pot-app-translate-plugin/deepseek
zip -r ../plugin.com.TzuLao.deepseek.potext info.json deepseek.svg main.js
```

The existing GitHub Actions workflow under `pot-app-translate-plugin/.github/workflows/build.yml` assumes the plugin files are at that workflow repository's root. If adapting it to run from this repository root, account for the `pot-app-translate-plugin/deepseek/` subdirectory.

## Working Notes

- Keep documentation index-oriented; the root `README.md` is the main map for quick lookup.
- Prefer small, localized changes inside the relevant subdirectory rather than introducing shared infrastructure across unrelated script/config areas.
- When editing `automator/` scripts, preserve the macOS behavior for both cases: Alacritty already running and Alacritty not running.
- When editing the Pot-App plugin, keep `info.json` model options aligned with the default model used in `main.js`.
