#!/bin/bash

cd "$(dirname "$0")"
pwd

# https://developers.google.com/unity/archive

array=()
array+=(https://dl.google.com/games/registry/unity/com.google.external-dependency-manager/com.google.external-dependency-manager-1.2.183.tgz)
array+=(https://dl.google.com/games/registry/unity/com.google.firebase.analytics/com.google.firebase.analytics-12.3.0.tgz)
array+=(https://dl.google.com/games/registry/unity/com.google.firebase.app/com.google.firebase.app-12.3.0.tgz)
array+=(https://dl.google.com/games/registry/unity/com.google.firebase.auth/com.google.firebase.auth-12.3.0.tgz)
array+=(https://dl.google.com/games/registry/unity/com.google.firebase.crashlytics/com.google.firebase.crashlytics-12.3.0.tgz)
array+=(https://dl.google.com/games/registry/unity/com.google.firebase.firestore/com.google.firebase.firestore-12.3.0.tgz)
array+=(https://dl.google.com/games/registry/unity/com.google.firebase.functions/com.google.firebase.functions-12.3.0.tgz)
array+=(https://dl.google.com/games/registry/unity/com.google.firebase.messaging/com.google.firebase.messaging-12.3.0.tgz)

for var in ${array[@]}; do
  filename="$(basename ${var})"
  if [ -f $filename ]; then
    echo $filename": file exist"
  else
    echo $filename": file not found -> download"
    curl -O $var
  fi
done
