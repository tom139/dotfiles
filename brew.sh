#!/usr/bin/env zsh

# Install command-line tools using Homebrew.
softwareupdate --install-rosetta

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
# brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
# brew install bash
# brew install bash-completion2

# Switch to using brew-installed bash as default shell
# if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#   echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#   chsh -s "${BREW_PREFIX}/bin/bash";
# fi;

# Install `wget` with IRI support.
# brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim
brew install neovim
brew install tmux
brew install --cask raycast
# brew install grep
brew install openssh
# brew install screen
# brew install php
# brew install gmp

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
# brew install ack
#brew install exiv2
brew install fzf
brew install ripgrep
brew install git
brew install git-lfs
# brew install gs
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
# brew install rename
# brew install rlwrap
# brew install ssh-copy-id
brew install tree
# brew install vbindiff
# brew install zopfli

# Install essentials
brew install colima docker docker-credential-helper
brew install tmux
brew install --cask raycast
brew install kubectx

# install aws related thigs
brew install awscli
brew install aws-sam-cli
brew install docker-credential-helper-ecr

# other useful things
# brew install cocoapods
brew install fswatch
brew install gh # github cli
brew install go
brew install ruby
# brew install corretto
# brew install corretto8
brew install htop
brew install jq
brew install httpie
# brew install python
brew install pyenv
# brew install swiftgen
brew install telnet
brew install speedtest
brew install tokei

# Remove outdated versions from the cellar.
brew cleanup
