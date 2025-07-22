# Vim Setup Documentation

## Overview
This is a vim configuration using **Pathogen** as the plugin framework, optimized for DevOps work.

## Current Status
- **Plugin Framework**: Pathogen (`execute pathogen#infect()`)
- **Location**: `~/.vim/` directory with `~/.vimrc` configuration
- **Last Updated**: January 2025 - Fully optimized for DevOps workflows
- **Status**: ✅ Production ready

## Installed Plugins

### Core Plugins
- **ale** - Asynchronous linting engine (v4.0.0+)
- **fzf + fzf.vim** - Blazing fast fuzzy finder (replaced CtrlP)
- **dracula** - Color scheme
- **nerdtree** + **nerdtree-git-plugin** - File explorer with git status (v7.1.3)
- **vim-airline** - Status/tabline
- **vim-fugitive** - Git wrapper
- **vim-gitgutter** - Git diff indicators
- **delimitMate** - Auto-closing brackets
- **vim-todo-highlight** - TODO highlighting

### Visual Enhancement Plugins
- **vim-devicons** - File type icons with Nerd Font support
- **vim-nerdtree-syntax-highlight** - Colorized file icons in NERDTree

### DevOps-Specific Plugins
- **vim-terraform** - Terraform/HCL syntax highlighting + auto-formatting
- **ansible-vim** - Ansible playbook syntax highlighting
- **Dockerfile.vim** - Docker syntax highlighting
- **indentpython.vim** - PEP 8 compliant Python indentation
- **vim-polyglot** - 600+ language packs (JSON, HCL, YAML, etc.)

## Key Mappings

### File Navigation (fzf.vim)
- `Ctrl-P` - Find files (`:Files`)
- `Ctrl-G` - Git files (`:GFiles`)
- `Ctrl-B` - Switch buffers (`:Buffers`)
- Within fzf finder:
  - `Ctrl-T` - Open in new tab
  - `Ctrl-X` - Horizontal split
  - `Ctrl-V` - Vertical split

### Search Commands
- `:Rg searchterm` - Global search across all files (requires ripgrep)
- `:BLines searchterm` - Search within current file

### File Management
- `F3` - NERDTree toggle

## DevOps Configuration

### File-Specific Settings
- **YAML/Ansible**: 2-space indentation, folding, whitespace visibility
- **Python**: 4-space indentation, PEP 8 compliance, 79-char line width
- **Terraform**: 2-space indentation, auto-format on save
- **Docker**: Dockerfile syntax highlighting

### Linting & Formatting (ALE)
- **YAML**: yamllint validation, prettier formatting
- **Shell scripts**: shellcheck linting, shfmt formatting
- **Dockerfile**: hadolint validation
- **Terraform**: Auto-format with `terraform fmt`
- **Python**: PEP 8 compliant indentation

## Visual Settings
- **Line numbers**: Hybrid mode (absolute + relative)
- **Whitespace**: Visible tabs/trailing spaces in YAML files
- **Powerline fonts**: Enabled for vim-airline
- **File endings**: Automatically adds newlines at end of files
- **File icons**: Nerd Font icons for file types and folders in NERDTree
- **Git status**: Visual indicators (✹ modified, ✚ staged, ✭ untracked, etc.)

## Performance Optimizations
- Replaced CtrlP with fzf.vim for faster file searching
- Updated all plugins to latest versions (2025)
- Removed unused JS/TS plugins and configurations
- Lazy-loaded language packs via vim-polyglot

## Dependencies

### Required System Packages
Install these packages on Ubuntu/Debian for full functionality:
```bash
sudo apt update
sudo apt install ripgrep  # Required for :Rg global search
```

### Required Fonts
For file icons to display properly:
- Install a **Nerd Font** (e.g., FiraCode Nerd Font, Hack Nerd Font)
- Configure your terminal to use the Nerd Font
- Download from: https://www.nerdfonts.com/

**Optional but recommended:**
```bash
sudo apt install yamllint shellcheck hadolint  # For ALE linting
```

## Plugin Management

### Update All Plugins
```bash
git submodule update --remote
git add -A && git commit -m "Update plugins"
```

### Update Specific Plugin
```bash
git submodule update --remote bundle/ale
```

### Check for Updates
```bash
git submodule foreach 'git fetch && git log --oneline HEAD..origin/master | head -5'
```

## Supported File Types
- **Infrastructure**: `.tf`, `.tfvars`, `.hcl` (Terraform)
- **Configuration**: `.yml`, `.yaml` (Ansible, Kubernetes)
- **Containers**: `Dockerfile`, `.dockerignore`
- **Scripting**: `.py`, `.sh`, `.bash`
- **Data**: `.json`, `.toml`
- **Version Control**: Git integration throughout

## Migration Notes
- ✅ Removed: coc.nvim, typescript-vim, vim-javascript, vim-jsx-pretty
- ✅ Upgraded: CtrlP → fzf.vim
- ✅ Updated: All plugins to 2025 versions
- ✅ Added: DevOps-specific plugins and configurations
- ✅ Fixed: Deprecated NERDTree option
- ✅ Added: File icons (vim-devicons) and syntax highlighting (vim-nerdtree-syntax-highlight)

## Usage Tips
- Use relative line numbers for efficient navigation (`3dd`, `5j`, `2yy`)
- fzf fuzzy matching: `vrc` finds `.vimrc`, `terra` finds Terraform files
- Global search: `:Rg terraform` finds all files containing "terraform"
- File search: `:BLines import` finds all "import" statements in current file
- YAML files show whitespace issues visually
- Terraform files auto-format on save
- Python files follow PEP 8 automatically

## Setup Instructions
1. Clone this vim configuration to `~/.vim/`
2. Install system dependencies: `sudo apt install ripgrep`
3. Optional: Install linters: `sudo apt install yamllint shellcheck hadolint`
4. Start vim - all plugins will be loaded via Pathogen