#!/bin/sh
SENSWORD_FILE=../sens-words.config
PROJECT_PATH=./test-tool
cd $PROJECT_PATH
cat $SENSWORD_FILE | while read sensword
do
#	echo $sensword
	git status -s | awk '{print $2}' | xargs grep -i "${sensword}"
done
