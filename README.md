# Mr-Peipei dotfiles

# windows(WSL)

## zsh

update

```
sudo apt update
sudo apt upgrade
```

Linuxbrew setup

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
sudo apt install build-essential curl file git
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
```

zsh install

```
brew install zsh
which zsh | sudo tee -a /etc/shells
chsh -s /home/linuxbew/.linuxbrew/bin/zshr
```

zplug install

```
brew install zplug
ln -s /home/linuxbrew/.linuxbrew/opt/zplug ~/.zplug
```

## neovim

#### clipboard 共有

以下に win32yank.exe を配置する。  
"C:\Tools\win32yank\win32yank.exe"

## tmux

#### session 保存

[参考 URL](https://github.com/tmux-plugins/tmux-resurrect)

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

# ArchLinux

# MacOS
