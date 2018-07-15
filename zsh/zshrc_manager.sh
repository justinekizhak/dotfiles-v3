# Run tmux if exists
if command -v tmux>/dev/null; then
 [ -z $TMUX ] && exec tmux
else
 echo "tmux not installed. Run ./deploy to configure dependencies"
fi

source ~/dotfiles/zsh/custom_functions.sh
source ~/dotfiles/zsh/oh-my-zsh.sh
source ~/dotfiles/zsh/keybindings.sh
source ~/dotfiles/zsh/custom_plugins.sh
source ~/dotfiles/zsh/zshrc.sh
