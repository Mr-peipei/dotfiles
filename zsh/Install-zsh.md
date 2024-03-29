## Manual Install zsh

### zsh

```
sudo apt update
sudo apt upgrade
```

Linuxbrew setup for Ubuntu

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
sudo apt install build-essential curl file git
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
```

install zsh

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

prezto

```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

```
nvim ~/.zpreztorc
```

```
zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
+ 'git' \
+ 'syntax-highlighting' \
+ 'autosuggestions' \
  'prompt'
```

theme 設定

```
prompt -p
```

power line fonts install

```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
```

add path for zshrc

```
# Customize to your needs...
# linuxbrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"

# zplug
export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh
zplug "sorin-ionescu/prezto"

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi
```
