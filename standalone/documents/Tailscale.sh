#!/bin/sh
# Name: Tailscale
# Author: Tailscale Kindle contributors
# Description: Tailscale VPN controls for a jailbroken Kindle

KTERM=/mnt/us/extensions/kterm/bin/kterm.sh
MENU=/mnt/us/extensions/tailscale-menu.sh

if [ ! -x "$KTERM" ]; then
    echo "Tailscale: kterm is not installed."
    echo "Copy the complete standalone package to the Kindle root."
    exit 1
fi

if [ ! -x "$MENU" ]; then
    echo "Tailscale: menu launcher is missing: $MENU"
    exit 1
fi

exec "$KTERM" -e "$MENU"
