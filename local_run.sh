#/bin/sh
RUN_SCRIPT_URL=https://raw.githubusercontent.com/owdevel/ansible_desktop/master/local_run.sh
RUN_SCRIPT=$HOME/ansible_desktop.sh

if [ ! -f "$RUN_SCRIPT" ]; then
	wget https://raw.githubusercontent.com/owdevel/ansible_desktop/master/local_run.sh --output-document $RUN_SCRIPT
fi


if [ -d "$AUR_PLUGIN_DIR" ]; then
	git -C $AUR_PLUGIN_DIR pull
else
	git clone https://github.com/kewlfft/ansible-aur.git $AUR_PLUGIN_DIR
fi

ansible-galaxy collection install community.general
ansible-galaxy collection install kewlfft.aur

ansible-pull -K -v -U https://github.com/owdevel/ansible_desktop.git
