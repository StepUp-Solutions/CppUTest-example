#!/bin/bash

if [[ $1 = "-uninstall" ]] || [[ $1 = "-reinstall" ]]; then
	rm -rf cpputest
	rm cpputest-4.0.tar.gz
fi


if [[ $1 != "-uninstall" ]]; then

	# Download CppuTest from Github
	if [ ! -d "cpputest" ]; then
		wget https://github.com/cpputest/cpputest/releases/download/v4.0/cpputest-4.0.tar.gz
		tar -xf cpputest-4.0.tar.gz
		rm cpputest-4.0.tar.gz
		mv cpputest-4.0 cpputest
	else
		echo "cpputest already downloaded!"
	fi

	cd cpputest

	# Actually install CppUTest
	# Needs automake and autoconf !
	./autogen.sh
	./configure
	make all

fi
