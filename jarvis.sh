#!/usr/bin/env sh
if [[ $1 == "dictionary" ]]; then
	jarvis <<- EOF
	dictionary
	$2
	quit
	EOF
elif [[ $1 == "translate" ]]; then
	src="$2"
	dest="$3"
	shift 3
	text="$@"
	jarvis <<- EOF
	translate
	$src
	$dest
	$text
	quit
	EOF
elif [[ $1 == "music" ]]; then
	jarvis <<- EOF
	$@
	0
	y
	quit
	EOF
else
	jarvis <<- EOF
	$@
	quit
	EOF
fi
