################
# herbstluftwm #
################

install_herbstluft()
{
	@ sudo $PKG herbstluftwm conky rofi trayer-srg xset dzen2 feh
	@ mkdir -p ~/.config
	@ cp -r files/herbstluftwm ~/.config/
	echo "herbstluftwm installed"
	echo
}
