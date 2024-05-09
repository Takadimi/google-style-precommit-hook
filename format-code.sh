#!/usr/bin/env sh
mkdir -p .cache
cd .cache
if [ ! -f google-java-format.jar ]
then
    wget -O google-java-format.jar "https://github.com/google/google-java-format/releases/download/google-java-format-1.7/google-java-format-1.7-all-deps.jar"
    chmod 755 google-java-format.jar
fi
cd ..

echo "Evaluating the following files: $@"

java -jar .cache/google-java-format.jar --replace $@
