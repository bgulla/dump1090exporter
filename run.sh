#!/bin/sh

echo "RESOURCE_PATH=${RESOURCE_PATH}"

if [  -z "${RESOURCE_PATH}" ];then
  echo "[FATAL] RESOURCE_PATH env not set"
  sleep 10
  exit 1
fi
/usr/local/bin/python -m dump1090exporter --resource-path=${RESOURCE_PATH}
