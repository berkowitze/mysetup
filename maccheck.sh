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

if [[ -d /Applications/InsomniaX.app ]];
then
    echo Insomnia Installed;
else
    echo Insomnia Not Installed;
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
	echo bash Installed;
else
	echo bash Not Installed;
fi;

if brew ls --versions vim > /dev/null;
then
	echo vim Installed;
else
	echo vim Not Installed;
fi;

if brew ls --versions python > /dev/null;
then
	echo python Installed;
else
	echo python Not Installed;
fi;

if brew ls --versions coreutils > /dev/null;
then
	echo coreutils Installed;
else
	echo coreutils Not Installed;
fi;

if brew ls --versions wget > /dev/null;
then
	echo wget Installed;
else
	echo wget Not Installed;
fi;

if brew ls --versions tldr > /dev/null;
then
	echo tldr Installed;
else
	echo tldr Not Installed;
fi;

if brew ls --versions tree > /dev/null;
then
	echo tree Installed;
else
	echo tree Not Installed;
fi;

if brew ls --versions hub > /dev/null;
then
	echo hub Installed;
else
	echo hub Not Installed;
fi;

if brew ls --versions cask > /dev/null;
then
	echo cask Installed;
else
	echo cask Not Installed;
fi;

if brew ls --versions colordiff > /dev/null;
then
	echo colordiff Installed;
else
	echo colordiff Not Installed;
fi;


