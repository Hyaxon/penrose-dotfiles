.PHONY: build check apply reload-i3 wallpaper restart-polybar

build:
	cd theme && lua build.lua

install: 
	./install.sh

check: build
	i3 -C -c generated/i3/config

reload-i3:
	i3-msg reload

wallpaper:
	chmod +x generated/desktop/wallpaper.sh
	./generated/desktop/wallpaper.sh

restart-polybar:
	chmod +x config/polybar/launch.sh
	~/.config/polybar/launch.sh

apply: build install check wallpaper reload-i3 restart-polybar
