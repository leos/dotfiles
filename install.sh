pip install pipx
pipx install ansible-base
pipx inject ansible-base ansible
pipx ensurepath
~/.local/bin/ansible localhost -m include_role -a name=linux/personal_config
