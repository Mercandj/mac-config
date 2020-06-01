#!/usr/bin/env bash

EMULATOR_NAME=$1

echo "EMULATOR_NAME: ${EMULATOR_NAME}"
echo "ANDROID_SDK: ${ANDROID_SDK}"

pushd ${ANDROID_SDK}/emulator
	echo \"Start $EMULATOR_NAME\"
	./emulator -avd $EMULATOR_NAME
popd

