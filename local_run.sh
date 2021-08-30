#/bin/sh
AUR_PLUGIN_DIR=~/.ansible/plugins/modules/aur/
RUN_SCRIPT=https://raw.githubusercontent.com/owdevel/ansible_desktop/master/local_run.sh

if [ ! -f "$RUN_SCRIPT" ]; then
	wget https://raw.githubusercontent.com/owdevel/ansible_desktop/master/local_run.sh --output-document $HOME/ansible_desktop.sh
fi


if [ -d "$AUR_PLUGIN_DIR" ]; then
	git -C $AUR_PLUGIN_DIR pull
else
	git clone https://github.com/kewlfft/ansible-aur.git $AUR_PLUGIN_DIR
fi

ansible-galaxy collection install community.general

ansible-pull -K -v -U https://github.com/owdevel/ansible_desktop.git
