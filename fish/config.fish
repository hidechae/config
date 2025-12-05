# env
export XDG_CONFIG_HOME=$HOME/.config
export GOPATH=$HOME/go
export PYTHONPATH=$HOME/Library/Python/3.9
export PATH="$PATH:$GOPATH/bin:$HOME/bin:$PYTHONPATH/bin:$HOME/.local/bin"
export NVM_DIR="$HOME/.config/nvm"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# nodenv
status --is-interactive; and eval (/opt/homebrew/bin/brew shellenv)
status --is-interactive; and source (nodenv init -|psub)

# rust
# source "$HOME/.cargo/env.fish

# override cmd
alias vim   'nvim -O' # holizontal split (-o vertical, -p tab)
alias ls    'eza'
alias l     'eza -hla --git'
alias tree  'eza -T --git-ignore'
alias cat   'bat'
alias tmux  'TERM=xterm-256color /opt/homebrew/bin/tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
alias mysql 'mysql --defaults-file="$XDG_CONFIG_HOME"/mysql/my.cnf'
alias rm    'rm -i'
alias cp    'cp -i'
alias mv    'mv -i'
alias sl    'ls'

# specific settings
alias jvsr     'cd ~/Project/vanish'
alias vsdb     'mysql -uroot -h127.0.0.1 -P13306 oxford'
alias vsdbtest 'mysql -uroot -h127.0.0.1 -P13307 oxford_test'
alias vsdbmall 'mysql -uroot -h127.0.0.1 -P23306 oxford'
alias fdb      'mysql -h 127.0.0.1 -uroot fortnite_scrim_tracker'
alias fdbp     'mysql -uapqtvhluolmw88d6 -hqvti2nukhfiig51b.cbetxkdyhwsb.us-east-1.rds.amazonaws.com -pub5yho1ahaph9v85 ohlkzp2fpmas1prc'

# GNU
alias date '/opt/homebrew/bin//gdate'

alias jg 'cd $(ghq root)/$(ghq list | fzf)'

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
  /opt/homebrew/bin/rg -p "$argv" | less -R
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

# direnv
set -x EDITOR vim
direnv hook fish | source

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/hideyukiutsunomiya/.lmstudio/bin
# End of LM Studio CLI section

# pnpm
set -gx PNPM_HOME "/Users/hideyukiutsunomiya/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Added by Windsurf
fish_add_path /Users/hideyukiutsunomiya/.codeium/windsurf/bin

# Added by Antigravity
fish_add_path /Users/hideyukiutsunomiya/.antigravity/antigravity/bin
