#!/usr/bin/env

plantuml architecture.puml
if [[ $? == 0 ]];
then
	git commit -a -m "New image created"
	git push

fi
