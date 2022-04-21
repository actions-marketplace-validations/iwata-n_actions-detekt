#!/bin/bash

cd $GITHUB_WORKSPACE

echo GITHUB_WORKSPACE=$GITHUB_WORKSPACE
echo INPUT_RESULT=$INPUT_RESULT
echo "----"

java -jar /detekt.jar -r xml:$INPUT_RESULT

echo "----"
cat $INPUT_RESULT
exit 0
