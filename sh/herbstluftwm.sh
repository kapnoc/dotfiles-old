################
# herbstluftwm #
################

install_herbstluft()
{
	@ sudo $PKG herbstluftwm conky rofi trayer-srg xset dzen2 feh network-manager-applet
	@ mkdir -p ~/.config
	@ cp -r files/herbstluftwm ~/.config/
	echo "herbstluftwm installed"
	echo
}
