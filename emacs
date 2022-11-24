#!/bin/sh
# distrobox_binary
# name: "default0"
if [ ! -f /run/.containerenv ] && [ ! -f /.dockerenv ]; then
    /usr/local/bin/distrobox-enter  -n "default0" -- 		 /bin/emacs  $@
else
    /bin/emacs $@
fi
