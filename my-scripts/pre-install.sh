#!/usr/bin/env bash

set -e
cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
source fn.sh
source common.sh

cd ..

if [ -e ".yarnrc.bak" ]; then
	rm -f .yarnrc
	mv .yarnrc.bak .yarnrc
fi

sed -i.bak "/cache-folder/d" ".yarnrc"
echo '' >> ".yarnrc"
echo 'cache-folder "'${YARN_CACHE_FOLDER}'"' >> ".yarnrc"