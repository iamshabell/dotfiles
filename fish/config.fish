if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_greeting
    echo "🌀 Welcome back, constant of chaos."
    echo "🕒 The time is "(set_color yellow; date +%T; set_color normal)
end

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

# Add to PATH

set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH /Users/drakon/bin/flutter/bin $PATH
set -gx PATH /Users/drakon/zig/master/files $PATH
set -gx PATH /Users/drakon/.local/bin $PATH
set -gx PATH /Users/drakon/.local/pipx/venvs/frappe-bench $PATH
set -gx PATH /opt/homebrew/opt/binutils/bin $PATH
