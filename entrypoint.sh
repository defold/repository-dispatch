#!/bin/sh -l

OWNER=$1
REPO=$2
TOKEN=$3
ACTION=$4

if [ -z "${OWNER}" ]; then
	echo "Missing environment variable OWNER"
	exit 1
fi
if [ -z "${REPO}" ]; then
	echo "Missing environment variable REPO"
	exit 1
fi
if [ -z "${TOKEN}" ]; then
	echo "Missing environment variable TOKEN"
	exit 1
fi

curl -X POST https://api.github.com/repos/${OWNER}/${REPO}/dispatches \
-H 'Accept: application/vnd.github.everest-preview+json' \
-H 'Authorization: token ${TOKEN}' \
--data '{"event_type": "${ACTION}"}'
