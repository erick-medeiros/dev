#!/bin/sh

_update_apt() {
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get autoremove
	sudo apt-get autoclean
}

_update_snap() {
	sudo snap refresh
}

_update_flatpak() {
	flatpak update
	flatpak uninstall --unused
}

_update_asdf() {
	asdf update
	asdf plugin update --all
}

update() {
	_update_apt
	_update_flatpak
	_update_snap
	_update_asdf
}
