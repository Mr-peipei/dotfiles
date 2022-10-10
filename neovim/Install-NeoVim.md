# Setup NeoVim

## For Windows

### Install gcc

Go to a Neovim home page and download neovim(version +0.70) msi file.
Install by msi file.

You need to install gcc to compile treesitter.

Install Scoope

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
iwr -useb get.scoop.sh | iex
```

Install gcc

```

scoop install gcc

```

### Setup windows terminal

For powershell the installation is:

```
Install-Module oh-my-posh -Scope CurrentUser
```

You can check theme by below the command

```
Get-PoshThemes
```

To import your theme on startup, create your profile

```
nvim $PROFILE
```

```
Set-PoshPrompt -Theme hogehoge
```

### Install NerdFont

You can downloads nerds fonts by this [link](https://www.nerdfonts.com/font-downloads).

## For Ubuntu

### Install stylua

```
brew install stylua
```

### Install prettier

```
npm install -g prettier
```

### Install ripgrep

```
brew install ripgrep
```

※apt だと bat との依存関係か何かで落ちた
