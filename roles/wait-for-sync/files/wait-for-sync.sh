#!/usr/bin/env bash

until [[ $(curl -s -o /dev/null -w "%{http_code}" localhost:9000/api/v1/status/peer) == "200" ]]; do
	printf 'Syncing DB\n'
    sleep 5
done
until [[ $(curl -s localhost:9000/api/v1/status/peer | jq -r .state) == "Watch" ]]; do
    printf 'Syncing Blocks\n'
    sleep 5
done

