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

if brew ls --versions caskroom/cask/brew-cask > /dev/null;
then
	echo caskroom/cask/brew-cask installed;
else
	echo caskroom/cask/brew-cask not installed;
fi;

if brew ls --versions colordiff > /dev/null;
then
	echo colordiff installed;
else
	echo colordiff not installed;
fi;


