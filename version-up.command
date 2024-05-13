#!/bin/bash

cd "$(dirname "$0")"
pwd

files=(
    download-mac.command
    download-win.bat
    ../Packages/manifest.json
)
for file in ${files[@]}
do
    sed -i "" 's/-1.2.179.tgz/-1.2.179.tgz/g' ${file}
    sed -i "" 's/-11.9.0.tgz/-12.0.0.tgz/g' ${file}
done
