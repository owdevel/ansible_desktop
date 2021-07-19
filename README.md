# Ansible Desktop Configurator

Personal Ansible-Pull Desktop Configuration, based heavily on the tutorial by [LearnLinuxTV](https://www.youtube.com/watch?v=gIDywsGBqf4)

## Pull Command
```bash
wget -qO- https://raw.githubusercontent.com/owdevel/ansible_desktop/master/local_run.sh | bash
```
```bash
ansible-pull -K -U https://github.com/owdevel/ansible_desktop.git
```

### Flags
- `-K`, ask for privilege escalation password
- `-U`, url, either `https://*` or `ssh://*`
- `--private-key <PRIVATE_KEY_FILE>`, ssh private key
- `--accept-host-key`, adds host key to `~/.ssh/known_hosts` if not added
- `-C <CHECKOUT>`, checkout specific branch/tag/commit
- `-t <TAG>`, only run plays/tasks which are tagged



