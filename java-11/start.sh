#!/bin/sh

echo "Downloading the package ..."
wget --header "Authorization: Bearer $REGISTRY_TOKEN" -O file.zip "$REGISTRY_URL/v1/registry/deployment/$PROJECT/$NAME.zip"
echo "Done!"
echo "Extracting archive ..."
unzip -u file.zip
rm file.zip
echo "Done!"

# We do not need to install anything in java. We are already given a JAR file.
# echo "Running the install command: $CMD_INSTALL"
# eval $CMD_INSTALL
# echo "Done!"

echo "Running the execute command: $CMD_RUN"
eval $CMD_RUN