#!/bin/bash

source $(aware-devtools.sh libpath)/genver.sh
source $(aware-devtools.sh libpath)/debian.sh

echo "1.0-27"
exit

USERNAME="build-rules-repo" PASSWORD='HX{EMB),'"'"'!:d-_bN4q' pkg_list_http \
	"https://deb.aware.ro/debian/dists/dev/main/binary-all/Packages.gz" build-rules |\
	latest_version | pkg_version | inc_patch
