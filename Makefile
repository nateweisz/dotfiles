install:
	sudo pacman -S --needed base-devel git libalpm.so stow
	make setup-paru
	stow . --adopt

setup-paru:
	if [ -d "../paru" ]; then \
	  echo "Paru is already installed"; \
        else \
          git clone https://aur.archlinux.org/paru.git ../paru; \
          cd ../paru && makepkg -si; \
        fi


system76-packages:
	paru -S --noconfirm system76-firmware-daemon-git 
	sudo systemctl enable --now system76-firmware-daemon
	sudo gpasswd -a $USER adm
	paru -S --noconfirm firmware-manager-git system76-driver
	sudo systemctl enable --now system76
