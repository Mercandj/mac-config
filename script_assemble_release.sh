#!/usr/bin/env bash

FOLDER_NAME_TO_RUN=$1

if [[ "$FOLDER_NAME_TO_RUN" == "" ]]; then
    ./gradlew assembleRelease
elif [[ "$FOLDER_NAME_TO_RUN" == *_ios ]]; then
    bash "./$FOLDER_NAME_TO_RUN/script/assemble_release.sh"
else
    ./gradlew "$FOLDER_NAME_TO_RUN":assembleRelease
fi
