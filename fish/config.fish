# env
export XDG_CONFIG_HOME=$HOME/.config
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin:$HOME/bin"

# override cmd
alias vim  'nvim'
alias ls   'exa'
alias l    'exa -hla --git'
alias tree 'exa -T --git-ignore'
alias cat  'bat'
alias tmux 'TERM=xterm-256color /usr/local/bin/tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
alias mysql 'mysql --defaults-file="$XDG_CONFIG_HOME"/mysql/my.cnf'

# specific settings
alias jgo  'cd ~/go/src'
alias jvs  'cd ~/go/src/bitbucket.org/v-standard'
alias jvsr 'cd ~/Project/vanish'
alias vsdb 'mysql -uroot -h127.0.0.1 -P13306 oxford'

# history with fzf
function fish_user_key_bindings
  bind \cr __fzf_history
end

function __fzf_history
  history | fzf-tmux -d40% +s +m --tiebreak=index --query=(commandline -b) \
    > /tmp/fzf
  and commandline (cat /tmp/fzf)
end

# github
function gpull
  git fetch origin --prune
  git pull --rebase origin (git branch | grep '*' | cut -d ' ' -f 2)
end

function gpush 
  git push origin (git branch | grep '*' | cut -d ' ' -f 2)
end

# ripgrep
alias ag rg
function rg
  /usr/local/bin/rg -p "$argv" | less -R
end
