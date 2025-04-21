
# ~/.zshrc

# Set basic env
export EDITOR=nvim
export TERMINAL=foot
export BROWSER=firefox

# Host and role awareness
export HOST_ROLE=$(cat /etc/host-role 2>/dev/null || echo "unknown")
export HOSTNAME_SHORT=$(hostname -s)

# Source per-host overrides if they exist
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Prompt: include role and hostname
PS1="%F{cyan}%n@%m%f [%F{yellow}$HOST_ROLE%f] %F{green}%~%f %# "

# Aliases
alias ll='ls -lah'
alias reload='source ~/.zshrc'

# Optional: startup banner
echo "[$(date +%H:%M)] Welcome back to $HOSTNAME_SHORT ($HOST_ROLE)"
