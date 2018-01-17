#!/bin/bash

#Matching some ANSI escape codes with plain color names
Orange='\033[0;33m'
Green='\033[0;32m'
Red='\033[0;31m'

echo -e "${Orange}Replacing -Xmx1024m -XX:MaxPermSize=384m with -Xmx1024m in your setenv.sh file, please wait ..."

sed -i 's/ -Xmx1024m -XX:MaxPermSize=384m/-Xmx2048m/g' tomcat-8.0.32/bin/setenv.sh

echo -e "${Green}Success ! Done !"
