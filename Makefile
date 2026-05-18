.PHONY: build check apply reload-i3

build:
	cd theme && lua build.lua

check: build
	i3 -C -c generated/i3/config

reload-i3:
	i3-msg reload

apply: build check reload-i3
