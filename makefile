all:
	@echo -e "\nHello, ${HOSTNAME}@${USER}!\n"

git-config:
	cp git/.gitconfig ~

gnome-config:
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
	unzip -o FiraCode.zip -d ~/.local/share/fonts/ 
	rm FiraCode.zip
	mkdir -p ~/.themes
	wget https://github.com/dracula/gtk/archive/master.zip
	unzip -o master.zip -d ~/.themes
	gsettings set org.gnome.desktop.interface gtk-theme "gtk-master"
	gsettings set org.gnome.desktop.wm.preferences theme "gtk-master"
	rm master.zip
	mkdir -p ~/.icons
	./gnome/icons/Fluent-icon-theme/install.sh -d ~/.icons purple
	gsettings set org.gnome.desktop.interface icon-theme "Fluent-purple-dark"

zsh-config:
	cp zsh/.zshrc ~
	cp -fR ./zsh/themes/spaceship-prompt ~/.oh-my-zsh/custom/themes/spaceship-prompt
	ln -s -f ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
	cp -fR ./zsh/plugins/fast-syntax-highlighting ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
	cp -fR ./zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	cp -fR ./zsh/plugins/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions


vim-config:
	pip install pynvim
	mkdir -p ~/.config/nvim/
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	cp vim/* ~/.config/nvim/
	nvim +PlugInstall +qall

submodules-download:
	git submodule update --init --recursive

