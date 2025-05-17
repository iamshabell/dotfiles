if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source
end
function fish_greeting
    echo "🌀 Welcome back, constant of chaos."
    echo "🕒 The time is "(set_color yellow; date +%T; set_color normal)
end


set -gx PATH /opt/homebrew/bin $PATH

# ---- Eza (better ls) -----
alias ls "eza --icons=always"

# ---- Zoxide (better cd) ----
zoxide init fish | source
alias cd z

# Flutter watch function
function flutter-watch
    set PID_FILE "/tmp/tf$fish_pid.pid"
    tmux new-session \; \
        send-keys "flutter run --pid-file=$PID_FILE" Enter \; \
        split-window -v \; \
        send-keys "npx -y nodemon -e dart -x \"cat $PID_FILE | xargs kill -s USR1\"" Enter \; \
        resize-pane -y 5 -t 1 \; \
        select-pane -t 0 \;
    rm $PID_FILE
end


set -x NVM_DIR (test -z "$XDG_CONFIG_HOME" && echo "$HOME/.nvm" || echo "$XDG_CONFIG_HOME/nvm")
if test -s "$NVM_DIR/nvm.sh"
    bass source "$NVM_DIR/nvm.sh"
end

# Add to PATH
set -gx PATH $HOME/bin/flutter/bin $PATH
set -gx PATH $HOME/zig/master/files $PATH
set -gx PATH $HOME/.local/bin $PATH
set -gx PATH $HOME/.local/pipx/venvs/frappe-bench $PATH
set -gx PATH $HOME/zig/master/files $PATH
set -gx PATH $HOME/.cargo/bin $PATH

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.fish 2>/dev/null || :
