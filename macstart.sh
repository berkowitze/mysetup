echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing bash, vim, python, coreutils, ..."
brew install bash vim python2.7 coreutils wget tldr tree hub cask caskroom/cask/brew-cask colordiff
brew tap caskroom/versions
brew cask install sublime-text
brew unlink python && brew link python
brew unlink vim && brew link vim
brew unlink bash && brew link bash
echo /usr/local/bin/bash >> /etc/shells
chsh -s /usr/local/bin/bash $USER
echo "Installing matplotlib, ipython, numpy, scipy..."
pip install matplotlib ipython numpy scipy

mkdir $HOME/.dircolors
git clone https://github.com/gibbling666/dircolors.git $HOME/.dircolors
echo "Colors set up..."

cp .bash_profile $HOME/
cp .bashrc $HOME/

cp -r .vim $HOME/
cp .vimrc $HOME/

cp .git_config $HOME/
echo "Files copied..."
ipython -c "import matplotlib, scipy, numpy"
echo "Python & iPython installation complete..."

echo "Installing Sublime..."
brew cask install sublime-text &>/dev/null

echo "Installing iTerm..."
brew cask install iterm2 &>/dev/null

echo "Installing Flux..."
brew cask install flux &>/dev/null

echo "Installing Chrome..."
brew cask install google-chrome &>/dev/null

echo "Installing SizeUp..."
brew cask install sizeup &>/dev/null

echo "Downloading bakery..."
mkdir $HOME/explosive-bakery
git clone https://github.com/IzzyBrand/explosive-bakery $HOME/explosive-bakery
# echo "Installing Chrome..."
# brew cask install google-chrome &>/dev/null

echo "All done!"

echo "Remember to setup:"
echo "1. Brown SSH"
echo "2. Install iTerm (https://www.iterm2.com/downloads.html)"
echo "3. Set .txt default to Sublime"
echo "4. Install SizeUp http://www.irradiatedsoftware.com/sizeup/"
echo "5. Get SizeUp License Going (https://mail.google.com/mail/u/0/#search/in%3Aanywhere+irradiated)"

