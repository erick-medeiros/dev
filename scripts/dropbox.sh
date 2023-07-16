#!/bin/sh

fn_dropbox_unsyncable() {
	find $@ -exec echo '"{}" ' \; | xargs dropbox filestatus | grep unsyncable || true
}
