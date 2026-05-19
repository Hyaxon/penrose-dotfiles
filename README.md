# penrose-dotfiles

Personal Linux dotfiles for an i3-based desktop with a Lua-powered theme/template system.

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
├── config/         # Editable source templates and hand-written scripts
│   ├── desktop/    # Wallpaper script template
│   ├── i3/         # i3 config template
│   ├── polybar/    # Polybar template and launch script
│   └── rofi/       # Rofi theme/config template
├── generated/      # Generated config output; do not edit directly
│   ├── desktop/
│   ├── i3/
│   ├── polybar/
│   └── rofi/
├── theme/          # Lua theme system
│   ├── build.lua   # Build entry point
│   ├── render.lua  # Template renderer
│   └── themes/     # Theme definitions
├── wallpapers/     # Wallpaper assets
├── install.sh      # Symlink setup
└── Makefile        # Build/apply commands
```

## Theme System

Themes are defined in:

```text
theme/themes/
```

The main theme is defined in:

```text
theme/themes/penrose.lua
```

The active theme is selected in:

```text
theme/build.lua
```

Templates are stored in:

```text
config/
```

Generated configs are written to:

```text
generated/
```

The renderer replaces template placeholders like:

```text
{{colors.bg}}
{{fonts.ui}}
{{i3.gaps_inner}}
{{generated.i3.workspaces.define}}
```

Do not edit files inside `generated/` directly. They are overwritten by the build process. Edit files in `config/` or `theme/themes/` instead.

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

Edit a source template:

```bash
nvim config/i3/config.template
nvim config/polybar/config.template.ini
nvim config/rofi/config.template.rasi
nvim config/desktop/wallpaper.template.sh
```

Then rebuild/apply:

```bash
make apply
```

## Notes

- `config/` contains editable templates and hand-written scripts.
- `generated/` files are machine-generated.
- `theme/themes/` contains theme definitions.
- `theme/render.lua` handles placeholder replacement, computed values, and generated blocks.
- Inspired by [srchby's i3 rice](https://github.com/srchby/dotfiles) 

