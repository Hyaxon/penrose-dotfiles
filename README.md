# penrose_dotfiles

Personal Linux dotfiles for an i3-based desktop using a multiple themes.

## Stack

- i3
- Polybar
- Rofi
- Ghostty
- feh
- Fastfetch
- Neovim
- Oh My Zsh

## Structure

```text
.
├── config/        # Hand-written configs and scripts
├── generated/     # Generated config output
├── theme/         # Lua theme system
│   ├── build.lua
│   ├── generators/
│   └── themes/
├── wallpapers/    # Wallpaper assets
├── install.sh     # Symlink setup
└── Makefile       # Build/apply commands
```

## Theme System

The main theme is defined in:

```text
theme/themes/penrose.lua
```

Generators are stored in:

```text
theme/generators/
```

Generated configs are written to:

```text
generated/
```

Do not edit files inside `generated/` directly. Edit the theme or generator files instead.

## Important Commands

Build generated configs:

```bash
make build
```

Validate the generated i3 config:

```bash
make check
```

Apply the desktop config:

```bash
make apply
```

Run first-time symlink setup:

```bash
./install.sh
```

## Current Generated Targets

- i3 config
- Rofi config
- Polybar config
- Wallpaper script
- Ghostty config

## Workflow

Edit the theme:

```bash
nvim theme/themes/penrose.lua
```

Then apply changes:

```bash
make apply
```

Edit a generator:

```bash
nvim theme/generators/polybar.lua
```

Then rebuild/apply:

```bash
make apply
```

## Notes

- To change theme edit `theme/build.lua`'s module requirement. 
- `generated/` files are machine-generated.
- `config/` contains hand-written scripts and configs.
- Polybar scripts live in:

```text
config/polybar/scripts/
```

- Inspired by [srchby's i3 rice](https://github.com/srchby/dotfiles) 
