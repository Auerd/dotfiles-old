/usr/bin/curl -s https://api.github.com/repos/ryanoasis/nerd-fonts/releases/latest \
| /usr/bin/grep "JetBrainsMono.tar.xz" \
| /usr/bin/cut -d : -f 2,3 \
| /usr/bin/tr -d \" \
| /usr/bin/wget -qi - \
&& /usr/bin/mkdir /usr/share/fonts/JetBrainsMono \
&& /usr/bin/tar -xf JetBrainsMono.tar.xz -C /usr/share/fonts/JetBrainsMono \
&& /usr/bin/rm JetBrainsMono.tar.xz
&& /usr/bin/echo "Don't forget to use fc-cache!"
