export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
. "$HOME/.cargo/env"
