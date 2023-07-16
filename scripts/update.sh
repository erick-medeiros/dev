#!/bin/sh

fn_update_apt() {
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get autoremove
}

fn_update_snap() {
	sudo snap refresh
}

fn_update_flatpak() {
	flatpak update
	flatpak uninstall --unused
}
