echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing bash, vim, python, coreutils, ..."
brew install bash
brew install vim
brew install python
brew install fortune
brew install coreutils
brew install wget
brew install tldr
brew install tree
brew install hub
brew install cask
brew cask install osxfuse
brew install sshfs
brew install colordiff
brew tap caskroom/versions
brew unlink python && brew link python
brew unlink vim && brew link vim
brew unlink bash && brew link bash
sudo mv /usr/local/bin/python2 /usr/local/bin/python
sudo mv /usr/local/bin/pip2 /usr/local/bin/pip
sudo echo /usr/local/bin/bash >> /etc/shells
chsh -s /usr/local/bin/bash $USER

echo "Installing matplotlib, ipython, numpy, scipy..."
pip install matplotlib ipython numpy scipy flask

echo "Setting up fuse/sshfs..."
mkdir $HOME/mcs

mkdir $HOME/.dircolors
git clone https://github.com/gibbling666/dircolors.git $HOME/.dircolors
echo "Colors set up..."

cp .bash_profile $HOME/
cp .bashrc $HOME/

cp -r .vim $HOME/
cp .vimrc $HOME/

cp .gitconfig $HOME/
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

echo "Installing TeamViewer..."
brew cask install teamviewer &>/dev/null

echo "Installing Bartender..."
brew cask install bartender &>/dev/null

echo "Installing Alfred..."
brew cask install alfred &>/dev/null

echo "Installing InsomniaX..."
brew cask install insomniax &>/dev/null
echo "Downloading bakery..."
mkdir $HOME/explosive-bakery
git clone https://github.com/IzzyBrand/explosive-bakery $HOME/explosive-bakery

echo "All done!"

echo "Remember to setup:"
echo "1. Brown SSH"
echo "2. Set .txt default to Sublime"
echo "3. Get SizeUp License Going (https://mail.google.com/mail/u/0/#search/in%3Aanywhere+irradiated)"
echo "4. Get SizeUp configured"

echo "Checks:"
if [[ -d /Applications/Google\ Chrome.app ]];
then
    echo Chrome Installed;
else
    echo Chrome Not Installed;
fi

if [[ -d /Applications/Sublime\ Text.app ]];
then
    echo Sublime Installed;
else
    echo Sublime Not Installed;
fi

if [[ -d /Applications/TeamViewer.app ]];
then
    echo TeamViewer Installed;
else
    echo TeamViewer Not Installed;
fi

if [[ -d /Applications/SizeUp.app ]];
then
    echo SizeUp Installed;
else
    echo SizeUp Not Installed;
fi

if [[ -d /Applications/iTerm.app ]];
then
    echo iTerm Installed;
else
    echo iTerm Not Installed;
fi

if [[ -d $HOME/explosive-bakery ]];
then
    echo Bakery Installed;
else
    echo Bakery Not Installed;
fi

ipython -c "import matplotlib, scipy, numpy, flask; print \"Python Good\""

if brew ls --versions bash > /dev/null;
then
	echo bash installed;
else
	echo bash not installed;
fi;

if brew ls --versions vim > /dev/null;
then
	echo vim installed;
else
	echo vim not installed;
fi;

if brew ls --versions python > /dev/null;
then
	echo python installed;
else
	echo python not installed;
fi;

if brew ls --versions coreutils > /dev/null;
then
	echo coreutils installed;
else
	echo coreutils not installed;
fi;

if brew ls --versions wget > /dev/null;
then
	echo wget installed;
else
	echo wget not installed;
fi;

if brew ls --versions tldr > /dev/null;
then
	echo tldr installed;
else
	echo tldr not installed;
fi;

if brew ls --versions tree > /dev/null;
then
	echo tree installed;
else
	echo tree not installed;
fi;

if brew ls --versions hub > /dev/null;
then
	echo hub installed;
else
	echo hub not installed;
fi;

if brew ls --versions cask > /dev/null;
then
	echo cask installed;
else
	echo cask not installed;
fi;

if brew ls --versions colordiff > /dev/null;
then
	echo colordiff installed;
else
	echo colordiff not installed;
fi;

# set update interval to 30 days
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 30

bash maccheck.sh


echo "Remember to setup:"
echo "1. Brown SSH"
echo "2. Set .txt default to Sublime"
echo "3. Get SizeUp License Going (http://www.irradiatedsoftware.com/orders/LicenseLookup.php?product=SizeUp&id=23M58072SY2181539)"
echo "4. Get SizeUp configured"
