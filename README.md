# Config
Configure files using [XDG Base Directory](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

# Installation
## Install brew packages
```
brew install fish exa bat nvim  ripgrep

# git diff
brew install git-delta

# mysql color
brew install grc

# direnv
brew install direnv

# nodenv
brew install nodenv

# Fisher (https://github.com/jorgebucaran/fisher)
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# nvm (https://github.com/jorgebucaran/nvm.fish)
fisher install jorgebucaran/fish-nvm
fisher install edc/bass

# GNU
brew install coreutils

# exa
brew install exa

# bat
brew install bat

# tmux
brew install tmux

# ripgrep
brew install ripgrep

# ghq
brew install ghq
```

## Neovim Setup (LazyVim)
This configuration uses [LazyVim](https://www.lazyvim.org/), a modern Neovim distribution.

### Features
- **Plugin Manager**: lazy.nvim (fast and modern)
- **LSP Support**: Go (gopls), Kotlin (kotlin-language-server)
- **Formatter**: goimports, gofumpt for Go
- **Fuzzy Finder**: Telescope (replaces fzf)
- **File Explorer**: neo-tree (replaces NERDTree)
- **Colorscheme**: Gruvbox with transparent background
- **Treesitter**: Advanced syntax highlighting

### First Launch
When you first open Neovim, LazyVim will automatically:
1. Install lazy.nvim plugin manager
2. Download and install all configured plugins
3. Install language servers (gopls, kotlin-language-server) via Mason

This may take a few minutes on first launch.

### Key Bindings
```
# File Operations
ff          - Find files (Telescope)
fm          - Recent files
fc          - Change colorscheme
<C-g>       - Live grep (search in files)
fgs         - Git status

# File Explorer
<leader>e   - Toggle neo-tree

# LSP
gd          - Go to definition
gr          - Find references
K           - Show documentation
<leader>ca  - Code actions
<leader>rn  - Rename symbol

# Other
<Esc><Esc>  - Clear search highlight
```

### Backup
Old configuration is backed up at `~/.config/nvim.backup`

# Other settings
## zsh
Load zsh config from .config directory
```
# Add this line to ~/.zshrc
source ~/.config/zsh/zshrc
```

## fish shell
Change default shell to fish shell
```
$ sudo vi /etc/shells
# -> Add line `/usr/local/bin/fish`

$ chsh -s /usr/local/bin/fish
```
