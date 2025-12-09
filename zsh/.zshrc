#
#  __  ____   __  _________  _   _ ____   ____
# |  \/  \ \ / / |__  / ___|| | | |  _ \ / ___|
# | |\/| |\ V /    / /\___ \| |_| | |_) | |
# | |  | | | |    / /_ ___) |  _  |  _ <| |___
# |_|  |_| |_|   /____|____/|_| |_|_| \_\\____|
#

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
