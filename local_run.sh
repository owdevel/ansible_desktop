#/bin/sh

git clone https://github.com/kewlfft/ansible-aur.git ~/.ansible/plugins/modules/aur
ansible-pull -K -U https://github.com/owdevel/ansible_desktop.git


