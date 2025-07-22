# Vim Setup Documentation

## Overview
This is a vim configuration using **Pathogen** as the plugin framework, optimized for DevOps work.

## Current Status
- **Plugin Framework**: Pathogen (`execute pathogen#infect()`)
- **Location**: `~/.vim/` directory with `~/.vimrc` configuration
- **Last Updated**: Contains both JS/TS development plugins and DevOps-focused settings

## Known Issues
1. **coc.nvim not compiled**: Missing `build/index.js` - needs `yarn install` in `~/.vim/bundle/coc.nvim/`
2. **Deprecated NERDTree option**: `g:NERDTreeIndicatorMapCustom` should be `g:NERDTreeGitStatusIndicatorMapCustom`

## Installed Plugins
### Core Plugins (Keep for DevOps)
- **ale** - Asynchronous linting engine
- **ctrlp.vim** - Fuzzy file finder  
- **dracula** - Color scheme
- **nerdtree** + **nerdtree-git-plugin** - File explorer with git status
- **vim-airline** - Status/tabline
- **vim-fugitive** - Git wrapper
- **vim-gitgutter** - Git diff indicators
- **delimitMate** - Auto-closing brackets
- **vim-todo-highlight** - TODO highlighting

### JS/TS Plugins (Remove for DevOps focus)
- **coc.nvim** - Language server client (broken, needs yarn install)
- **typecript-vim** - TypeScript syntax
- **vim-javascript** - JavaScript syntax  
- **vim-jsx-pretty** - JSX syntax highlighting

## Key Mappings
- `F3` - NERDTree toggle
- `K` - Show documentation (coc.nvim - currently broken)
- `gd/gy/gi/gr` - Go to definition/type/implementation/references (coc.nvim)
- `[g]/]g` - Navigate diagnostics (coc.nvim)
- `<leader>rn` - Rename symbol (coc.nvim)
- `<space>a/c/e/o/s` - Various coc.nvim lists

## Recommended Cleanup for DevOps
1. Remove JS/TS plugins: `rm -rf ~/.vim/bundle/{coc.nvim,typecript-vim,vim-javascript,vim-jsx-pretty}`
2. Clean up vimrc to remove coc.nvim configuration (lines 66-233)
3. Fix deprecated NERDTree option
4. Configure ALE for DevOps files (YAML, shell scripts, Dockerfiles)

## Settings
- 2-space indentation
- Line numbers enabled
- Powerline fonts for airline
- Hidden files shown in NERDTree
- ESLint linting via ALE (change to DevOps linters)