# REQUIREMENTS:git, alacritty, zsh, homebrew, tmux, neovim, oh-my-tmux, oh-my-zsh,

# install homebrew
if ! command -v brew >/dev/null 2>&1
then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "homebrew found! Skipping..."
fi

# install alacritty
if ! (command -v alacritty >/dev/null 2>&1 || [ -f "/Applications/Alacritty.app/Contents/MacOS/alacritty" ])
then
    echo "Installing alacritty terminal"
    brew install --cask alacritty
else
    echo "alacritty found! Skipping..."
fi

# install neovim
if ! command -v nvim >/dev/null 2>&1
then
    echo "Installing neovim..."
    brew instal neovim
else
    echo "neovim found! Skipping..."
fi

# install tmux
if ! command -v tmux >/dev/null 2>&1
then
    echo "Installing tmux..."
    brew instal tmux
else
    echo "tmux found! Skipping..."
fi

# fonts
echo "Installing fonts..."
brew install --cask font-jetbrains-mono-nerd-font

# install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# installing oh-my-tmux
echo "Installing oh-my-tmux..."
git clone --single-branch https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
