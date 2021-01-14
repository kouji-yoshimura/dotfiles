source "$HOME/dotfiles/antigen.zsh"
antigen init ~/.antigenrc

# User configuration
export PATH="/sbin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$HOME/.anyenv/nodenvbin:$PATH"
export PATH="$HOME/.anyenv/gonvbin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH="/usr/local/opt/mongodb-community@4.0/bin:$PATH"
eval "$(anyenv init -)"
export PATH=$PATH:`npm bin -g`
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

## aliases
alias grep=ggrep

## finished command
fortune | cowsay -f tux | lolcat --spread=1.0

