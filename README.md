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
```

## Install vim-plug
see [vim-plug](https://github.com/junegunn/vim-plug)
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

# Other settings
## fish shell
Change default shell to fish shell
```
$ sudo vi /etc/shells
# -> Add line `/usr/local/bin/fish`

$ chsh -s /usr/local/bin/fish
```
