#!/bin/sh



me=`basename "$0"`

if [ "$me" = ".sanity.sh" ];then
  echo >&2 "This script is not expected to be run separately."
  exit 1
fi

bold=$(tput bold)
normal=$(tput sgr0)

hash docker 2>/dev/null || {
  echo >&2 "This script requires Docker but it's not installed."
  echo >&2 "Refer to documentation to fulfill requirements."
  exit 1
}

hash docker-compose 2>/dev/null || {
  echo >&2 "This script requires Docker compose but it's not installed."
  echo >&2 "Refer to documentation to fulfill requirements."
  exit 1
}

docker info &>/dev/null
if [ "$?" -eq "1" ];then
  echo >&2 "This script requires Docker daemon to run. Start Docker and try again."
  echo >&2 "Refer to documentation to fulfill requirements."
  exit 1
fi


current_dir=${PWD##*/}
