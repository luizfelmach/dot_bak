	all:
	@echo -e "\nHello, ${HOSTNAME}@${USER}!\n"

git-config:
	cp git/.gitconfig ~

gnome-config:
	mkdir -p ~/.themes
	tar -xf ./gnome/themes/Orchis-theme/release/Orchis-purple.tar.xz --directory ~/.themes
	gsettings set org.gnome.desktop.interface gtk-theme "Orchis-purple-dark"
	mkdir -p ~/.icons
	./gnome/icons/Fluent-icon-theme/install.sh -d ~/.icons purple
	gsettings set org.gnome.desktop.interface icon-theme "Fluent-purple-dark"
	mkdir -p ~/.icons/Nordzy-cursors
	tar -xf ./gnome/cursors/Nordzy-cursors/archives/Nordzy-cursors.tar.gz --directory ~/.icons/Nordzy-cursors
	gsettings set  org.gnome.desktop.interface cursor-theme "Nordzy-cursors"

zsh-config:
	cp zsh/.zshrc ~
	cp -fR ./zsh/themes/spaceship-prompt ~/.oh-my-zsh/custom/themes/spaceship-prompt
	ln -s -f ~/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/custom/themes/spaceship.zsh-theme
	cp -fR ./zsh/plugins/fast-syntax-highlighting ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
	cp -fR ./zsh/plugins/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
	cp -fR ./zsh/plugins/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions


vim-config:
	mkdir -p ~/.config/nvim/
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
		cp vim/init.vim ~/.config/nvim/

