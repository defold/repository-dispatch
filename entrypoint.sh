#!/bin/sh -l

REPO=$1
TOKEN=$2
USER=$3
ACTION=$4

if [ -z "${REPO}" ]; then
	echo "You must provide a repository to dispatch event to (:owner/:repo)"
	exit 1
fi
if [ -z "${TOKEN}" ]; then
	echo "You must provide a GitHub authentication token"
	exit 1
fi
if [ -z "${USER}" ]; then
	echo "You must provide the GitHub user to which the authentication token belong"
	exit 1
fi

curl -X POST https://${USER}@api.github.com/repos/${REPO}/dispatches \
-H 'Accept: application/vnd.github.everest-preview+json' \
-H 'Authorization: token ${TOKEN}' \
--data '{"event_type": "${ACTION}"}'
