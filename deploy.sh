#!/bin/bash

DEPLOY_REMOTE="matei@172.104.241.195"
REMOTE_PATH="/var/www/html/aware.ro/deb/debian"
REMOTE_PORT=31444

build() {
	make 2>>$LOG >> $LOG || exit
	export DEPLOY_TARGETS="*.deb"
	export V="$(echo *.deb | sed -e 's/.*_//' -e 's/\.deb//')"
}

report() {
	local tmp="aceveri -- \`${V}\`"
	echo "qqq -> '${tmp}'" >>$LOG
	script-buildozer.sh "${tmp}" aceveri
}

#### Builder dependencies
