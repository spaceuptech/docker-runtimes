#!/bin/sh
mkdir public
mkdir -p "public$PREFIX"
echo "Downloading the package ..."
wget --header "Authorization: Bearer $REGISTRY_TOKEN" -O file.zip "$REGISTRY_URL/v1/registry/deployment/$PROJECT/$NAME.zip"
echo "Done!"
echo "Extracting archive ..."
unzip -u file.zip -d "public$PREFIX"
rm file.zip
echo "Done!"
echo "Hosting the static content"
serve -l 8000 -s public