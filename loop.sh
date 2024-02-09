#!/usr/bin/env bash


while [[ 1 == 1 ]];
do

	git fetch
	git status  |grep "Your branch is behind " > /dev/null
	if [ $? -eq 0 ]; then
		echo "Your branch is behind"
		git pull
		java -jar plantuml.jar openknowit.puml 
	fi
	sleep 5
done

