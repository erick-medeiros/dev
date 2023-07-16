#!/bin/bash

PATH_SCRIPTS=~/dev/scripts

source $PATH_SCRIPTS/dropbox.sh
source $PATH_SCRIPTS/git.sh
source $PATH_SCRIPTS/update.sh

if [ "$1" == "dropbox" ]; then
	if [ "$2" == "unsyncable" ]; then
		fn_dropbox_unsyncable
	fi
fi

if [ "$1" == "msg-commit" ]; then
	fn_git_msg_commit
fi

if [ "$1" == "update" ]; then
	fn_update_apt
	fn_update_snap
	fn_update_flatpak
fi

if [ "$1" == "-h" ]; then
	echo dropbox unsyncable
	echo msg-commit
	echo update
fi
