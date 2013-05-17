#!/bin/bash

echo "Checking dependencies for vagrant-jenkins!"
echo ""

echo -n "[CHECK] vagrant: "
VAGRANT_BIN=$(which vagrant)
if [[ -z $VAGRANT_BIN ]]; then
  echo "not installed"
  echo "=> FAIL"
  echo "please install vagrant first"
  echo "Get it here http://www.vagrantup.com"
  exit 1
fi
if [[ "$VAGRANT_BIN" =~ 'gem' ]];  then
  echo "vagrant gem found"
	echo "=> FAIL"
  echo "vagrant must be installed from package"
  echo "Get it here http://www.vagrantup.com"
	exit 1
fi
echo $(vagrant -v)
echo '=> OK'
