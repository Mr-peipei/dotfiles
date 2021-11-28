
# Setup Antomation Shell
sudo pacman -S fish --noconfirm
sudo pacman -S lsd

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# setup config file
cp -r .vimrc ~/.vimrc
vim -c PlugInstall
cp -r .zshrc ~/.zshrc
cp -r config.fish ~/.config/fish/config.fish

# add fisher plugin
fisher install oh-my-fish/theme-bobthefish
fisher install jethrokuan/z
fisher install jethrokuan/fzf

# install fonts
yay -S ttf-cica
sudo pacman -S wget --noconfirm
yay --getpkgbuild nerd-fonts-complete 
cd nerd-fonts-complete
wget -O nerd-fonts-2.1.0.tar.gz https://github.com/ryanoasis/nerd-fonts/archive/v2.1.0.tar.gz
makepkg -sci BUILDDIR=.
