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
    sed -i "" 's/-1.2.183.tgz/-1.2.183.tgz/g' ${file}
    sed -i "" 's/-12.3.0.tgz/-12.4.1.tgz/g' ${file}
done
