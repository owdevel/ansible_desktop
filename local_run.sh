#/bin/sh
AUR_PLUGIN_DIR=~/.ansible/plugins/modules/aur/

if [ -d "$AUR_PLUGIN_DIR" ]; then
	git -C $AUR_PLUGIN_DIR pull
else
	git clone https://github.com/kewlfft/ansible-aur.git $AUR_PLUGIN_DIR
fi

ansible-galaxy collection install community.general

ansible-pull -K -v -U https://github.com/owdevel/ansible_desktop.git
