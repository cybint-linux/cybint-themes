

#!/bin/sh


# Files to divert
DIVERTS="
/etc/gtk-2.0/gtkrc
/etc/lightdm/lightdm-gtk-greeter.conf
/etc/plymouth/plymouthd.conf
/etc/sddm.conf.d/kde_settings.conf
/etc/xdg/compton.conf
/etc/xdg/gtk-3.0/settings.ini
/etc/xdg/kdeglobals
/etc/xdg/kickoffrc
/etc/xdg/konsolerc
/etc/xdg/kscreenlockerrc
/etc/xdg/kwinrc
/etc/xdg/menus/xfce-settings-manager.menu
/etc/xdg/plasmarc
/etc/xdg/qt5ct/qt5ct.conf
/etc/xdg/qterminal.org/qterminal.ini
/etc/xdg/xfce4/helpers.rc
/etc/xdg/xfce4/panel/default.xml
/etc/xdg/xfce4/terminal/terminalrc
/etc/xdg/xfce4/whiskermenu/defaults.rc
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/keyboard-layout.xml
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-session.xml
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
/etc/xdg/Thunar/uca.xml
/etc/xdg/Thunar/accels.scm
/etc/xdg/yakuakerc
" # END DIVERTS


update_script() {
	local script=$1
	(
	sed -n -e '1,/^FILES_TO_DIVERT="/ p' $script
	echo $DIVERTS
	sed -n -e '/^" # END FILES_TO_DIVERT/,$ p' $script
	) > $script.new
	mv $script.new $script
}

update_script debian/cybint-themes.preinst
# update_script debian/cybint-themes.postinst
update_script debian/cybint-themes.postrm

# for file in $DIVERTS; do \
# 	mkdir -p debian/cybint-themes/usr/share/cybint-themes$$(dirname $$file); \
# 	mv debian/cybint-themes$$file debian/cybint-themes/usr/share/cybint-themes$$file; \
# done