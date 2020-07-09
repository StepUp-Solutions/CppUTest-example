#!/bin/bash

# Download CppuTest from Github
rm -rf cpputest
rm cpputest-4.0.tar.gz
wget https://github.com/cpputest/cpputest/releases/download/v4.0/cpputest-4.0.tar.gz
tar -xf cpputest-4.0.tar.gz
rm cpputest-4.0.tar.gz
mv cpputest-4.0 cpputest
cd cpputest

# Actually install CppUTest
# Needs automake and autoconf !
./autogen.sh
./configure
make all
