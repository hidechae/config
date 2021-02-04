# Config
Configure files using [XDG Base Directory](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html).

# Installation
## Install brew packages
```
brew install fish exa bat nvim 

# git diff
brew install git-delta 

# mysql color
brew install grc
```

## Install vim-plug
see [vim-plug](https://github.com/junegunn/vim-plug)
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
