wdir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)
clearver=$(/bin/sh $wdir/openglver.sh | sed "s/\.//")
if [ "$clearver" -ge "33" ]; 
	then picom -b;
	else picom -b --config $HOME/.config/noglxpicom.conf;
fi;	
