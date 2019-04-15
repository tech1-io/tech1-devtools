#!/bin/bash

# returns the JDK version.
# 8 for 1.8.0_nn, 9 for 9-ea etc, and "no_java" for undetected
command_output=$(java -version 2>&1)
if [[ $command_output == "java version"* ]]; then
	result=""
	version=$( echo "$command_output" | sed -e 's/.*version "\(.*\)"\(.*\)/\1/; 1q')
	if [[ $version == "1."* ]]; then
		result=$(echo $version | sed -e 's/1\.\([0-9]*\)\(.*\)/\1/; 1q')
	else
		result=$(echo $version | sed -e 's/\([0-9]*\)\(.*\)/\1/; 1q')
	fi
	echo "Current version of Java: $result."
	if [ "$result" -ge 11 ]; then
		echo "You can use application successfully."
	else
		echo "Application minimum reqired Java version is 11. Java 11 must be added to the PATH variable. Please, update your current Java version and use this check again!"
	fi
else
	echo "Java not found on your machine! Java 11 must be installed and added to the PATH variable."
fi
