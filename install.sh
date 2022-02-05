git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto" 2> /dev/null || (cd "${ZDOTDIR:-$HOME}/.zprezto" ; git pull)

ln -sf "${ZDOTDIR:-$HOME}/.zprezto/zlogin" $HOME/.zlogin
ln -sf "${ZDOTDIR:-$HOME}/.zprezto/zshenv" $HOME/.zshenv

SCRIPT=$(readlink -f "$0")
BASEDIR=$(dirname "$SCRIPT")

ln -sf ${BASEDIR}/linux/personal_config/files/p10k.zsh.sh ${HOME}/.p10k.zsh
ln -sf ${BASEDIR}/linux/personal_config/files/zpreztorc.sh ${HOME}/.zpreztorc
ln -sf ${BASEDIR}/linux/personal_config/files/zshrc.sh ${HOME}/.zshrc

chsh --shell /usr/bin/zsh

git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global pull.rebase true
git config --global push.default current
