# Configuring your laptop
# -----------------------
#
# You are probably best off running each of these commands seperatley, so you know what they're doing.

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Taps
brew update
brew tap homebrew/bundle
brew tap homebrew/core
brew tap homebrew/services
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap thoughtbot/formulae
brew tap caskroom/cask
brew tap caskroom/fonts

# Utilities and Packages
brew install openssl coreutils md5sha1sum ctags libxml2 libpng libyaml freetype ffmpeg readline doxygen git ant ack tmux vim zsh reattach-to-user-namespace the_silver_searcher httpie curl vimpager p7zip grep tree heroku-toolbelt hub awscli nvm ruby-build rbenv rbenv-default-gems postgres redis sqlite mongodb mysql python3


# Brew Cask Packages
brew cask install qlmarkdown qlprettypatch quicklook-json font-inconsolata virtualbox vagrant atom mongohub

# Cleanup
brew prune
brew cleanup
brew cask cleanup
brew doctor
brew cask doctor

# Set default gems
cat > "$HOME/.rbenv/default-gems" <<-EOF
bundler
brice
hirb
gist
pry
pry-doc
awesome_print
rubocop
EOF

# Install Latest Ruby & Update Gems
rbenv install 2.4.1
gem update --system
bundle config --global jobs $(($(sysctl -n hw.ncpu) - 1))

# Copy over dotfiles
cd $HOME
curl -O https://raw.githubusercontent.com/dannysmith/laptop/master/assets/dotfiles/.bash_profile
curl -O https://raw.githubusercontent.com/dannysmith/laptop/master/assets/dotfiles/.vimrc
curl -O https://raw.githubusercontent.com/dannysmith/laptop/master/assets/dotfiles/.pryrc
curl -O https://raw.githubusercontent.com/dannysmith/laptop/master/assets/dotfiles/.irbrc
curl -O https://raw.githubusercontent.com/dannysmith/laptop/master/assets/dotfiles/.gitconfig
curl -O https://raw.githubusercontent.com/dannysmith/laptop/master/assets/dotfiles/.git_status_in_prompt.sh
echo "gem: --no-document" > $HOME/.gemrc

# Node and NVM
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
nvm install node
node --version

# Update and install NPM packages
npm update npm -g
npm update -g
npm install -g nodemon browser-sync


# Vim
curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim :silent! +PlugInstall +qall
vim :silent! +PlugClean +qall


# Install Python/Pip
curl -O https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install -U pip
unlink get-pip.py

# install Flooty
sudo pip install Flootty

# MacOS Settings

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Set faster Key Repeat
defaults write -g KeyRepeat -int 0

# Disable press-and-hold and enable KeyRepeat instead
defaults write -g ApplePressAndHoldEnabled -bool false

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Allow hitting the Backspace key to go to the previous page in history
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true


# Restart Finder
killall Finder && open /System/Library/CoreServices/Finder.app

# Rebuild font Cache
sudo atsutil databases -remove

# Build Locate databases
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
sudo /usr/libexec/locate.updatedb

# Set Terminal Colours
curl https://raw.githubusercontent.com/dannysmith/laptop/master/assets/SpartaPro.terminal > "$HOME/SpartaPro.terminal"
