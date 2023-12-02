#!/bin/bash

DEPLOY_REMOTE="builder@deb.aware.ro"
REMOTE_PATH="/var/www/html/aware.ro/deb/debian/pool/testing"
REMOTE_PORT=31444

build() {
	make 2>>$LOG >> $LOG || exit
	export DEPLOY_TARGETS="*.deb"
	export V="$(echo *.deb | sed -e 's/.*_//' -e 's/\.deb//')"
}

report() {
	local tmp="build-rules -- \`${V}\`"
	echo "qqq -> '${tmp}'" >>$LOG
	script-buildozer.sh "${tmp}"
}

deploy() {
	deploy_to_package_repo_v2 "$DEPLOY_TARGETS" "$DEPLOY_REMOTE" "$REMOTE_PATH" "$REMOTE_PORT"
}

#### Builder dependencies
