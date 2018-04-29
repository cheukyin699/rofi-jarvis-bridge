#!/usr/bin/env sh

if [[ $# -eq 0 ]]; then
	echo "Hi, what can I do for you?"
else
    $(dirname $0)/jarvis.sh $@ | tail -n +6 | head -n -2 | sed 's/\x1b\[[0-9;]*[a-zA-Z]//g'
fi
