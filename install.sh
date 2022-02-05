echo "hello!"
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu focal main" | tee /etc/apt/sources.list.d/ansible.list > /dev/null
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367

apt update && apt install ansible

ansible localhost -m include_role -a name=linux/personal_config
