#
#  __  ____   __  _________  _   _ ____   ____
# |  \/  \ \ / / |__  / ___|| | | |  _ \ / ___|
# | |\/| |\ V /    / /\___ \| |_| | |_) | |
# | |  | | | |    / /_ ___) |  _  |  _ <| |___
# |_|  |_| |_|   /____|____/|_| |_|_| \_\\____|
#

# 设置自动启动 Hyprland，需要配合 tty1 的 autologin 使用
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec start-hyprland
fi

source ~/.dotfiles/zsh/cursor.zsh
source ~/.dotfiles/zsh/zim.zsh
source ~/.dotfiles/zsh/fzf.zsh
source ~/.dotfiles/zsh/base.zsh

. "$HOME/.local/share/../bin/env"

# pnpm
export PNPM_HOME="/home/jebhim/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

. "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
