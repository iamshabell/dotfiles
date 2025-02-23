if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_greeting
    echo "🌀 Welcome back, constant of chaos."
    echo "🕒 The time is "(set_color yellow; date +%T; set_color normal)
end

set -gx PATH /opt/homebrew/bin $PATH
