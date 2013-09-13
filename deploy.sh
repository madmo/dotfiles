#!/bin/sh

function die() {
	echo $1
	exit 1
}

function deploy() {
	test -d "$1" || die "Deploy target is not a directory"

	shopt -s dotglob
	for f in $1/*
	do
		test -e "../${f#$1/}" && rm -ri "../${f#$1/}"
		ln -sf "$(realpath "$f")" ../${f#$1/}
	done
}

test -z "$1" && die "Need a project path"

deploy "$1"
