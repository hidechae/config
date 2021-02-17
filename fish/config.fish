# env
export XDG_CONFIG_HOME=$HOME/.config
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin:$HOME/bin"

# override cmd
alias vim   'nvim'
alias ls    'exa'
alias l     'exa -hla --git'
alias tree  'exa -T --git-ignore'
alias cat   'bat'
alias tmux  'TERM=xterm-256color /usr/local/bin/tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
alias mysql 'mysql --defaults-file="$XDG_CONFIG_HOME"/mysql/my.cnf'
alias rm    'rm -i'
alias cp    'cp -i'
alias mv    'mv -i'

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

# show 255 colors
function color
  for i in (seq 255)
    if test (math $i % 16) -eq 15
      printf "\x1b[38;5;%03dm%03d\n" $i $i
    else
      printf "\x1b[38;5;%03dm%03d  " $i $i
    end
  end
end

# nvm
# https://github.com/nvm-sh/nvm#fish)
# customise to use brew installed nvm.
# only using nvm_find_nvmrc from nvm.sh
function nvm_find_nvmrc
  bass source /usr/local/opt/nvm/nvm.sh --no-use ';' nvm_find_nvmrc
end

function load_nvm --on-variable="PWD"
  set -l nvmrc_path (nvm_find_nvmrc)

  if test -n "$nvmrc_path"
    set -l node_version (nvm current)
    set -l nvmrc_node_version (cat $nvmrc_path)

    if test $nvmrc_node_version != $node_version
      if test (nvm use  $nvmrc_node_version)
        nvm use $nvmrc_node_version
      else
        nvm install $nvmrc_node_version
      end
    end
  end
end

load_nvm
