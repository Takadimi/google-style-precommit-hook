#!/usr/bin/env sh
mkdir -p .cache
cd .cache
ls -l
if [ ! -f google-java-format-1.7-all-deps.jar ]
then
    rm google-java-format-1.7-all-deps.jar
    curl -LJO "https://github.com/google/google-java-format/releases/download/google-java-format-1.7/google-java-format-1.7-all-deps.jar"
    chmod 755 google-java-format-1.7-all-deps.jar
fi
cd ..

echo "Evaluating the following files: $@"

java -jar .cache/google-java-format-1.7-all-deps.jar --replace $@
