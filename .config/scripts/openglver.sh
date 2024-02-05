string=$(glxinfo | grep 'OpenGL version string: ' )
echo ${string:$(expr length "OpenGL version string: "):3}
