#!/usr/bin/env bash

FOLDER_NAME_TO_RUN=$1

if [[ "$FOLDER_NAME_TO_RUN" == "" ]]; then
    ./gradlew ktformat
elif [[ "$FOLDER_NAME_TO_RUN" == *_ios ]]; then
    bash "./$FOLDER_NAME_TO_RUN/script/format.sh"
else
    ./gradlew "$FOLDER_NAME_TO_RUN":ktformat
fi
