#!/bin/bash

default_version() {
	echo "1.0-0"
	exit 0
}

source $(aware-devtools.sh libpath)/genver.sh 2>/dev/null || default_version
source $(aware-devtools.sh libpath)/debian.sh 2>/dev/null || default_version

USERNAME="build-rules-repo" PASSWORD='HX{EMB),'"'"'!:d-_bN4q' pkg_list_http \
	"https://deb.aware.ro/debian/dists/dev/main/binary-all/Packages.gz" build-rules |\
	latest_version build-rules | pkg_version | inc_patch || default_version
