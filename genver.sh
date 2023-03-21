#!/bin/bash

only_patch() {
	sed 's/[^-]*-//'
}

no_patch() {
	sed 's/-.*//'
}

inc_patch() {
	local ver="$(cat -)"
	local patch="$(echo $ver | only_patch)"
	local rest="$(echo $ver | no_patch)"
	[ -z "$res" ] && rest=1.0
	patch=$(($patch + 1))
	echo "$rest-$patch"
}

latest_pkg() {
	local pkg_name="$1"
	sed -n  's/.*href="'"${pkg_name}_"'\([^"]*\).deb".*/\1/p' | sort -V | tail -n 1
}

ver_v2() {
	curl -v -u 'build-rules-repo:HX{EMB),'"'"'!:d-_bN4q' https://deb.aware.ro/debian/ 2>/dev/null |\
		latest_pkg build-rules | inc_patch
}

ver_v2

