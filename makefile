all:
	@echo -e "\nHello, ${HOSTNAME}@${USER}!\n"

git-config:
	cp git/.gitconfig ~

zsh-config:
	cp zsh/.zshrc ~
	cp -fR ./zsh/themes/spaceship-prompt ~/.oh-my-zsh/custom/themes/spaceship-prompt
	ln -s -f ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
	cp -fR ./zsh/plugins/fast-syntax-highlighting ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
	cp -fR ./zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	cp -fR ./zsh/plugins/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions