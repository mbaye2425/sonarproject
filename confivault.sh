#!/bin/bash

ROOT_TOKEN=$(jq -r ".root_token" cluster-keys.json)
kubectl exec --stdin=true --tty=true vault-0 -- /bin/sh
vault login $ROOT_TOKEN
