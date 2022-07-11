#!/bin/sh
set -e
envsubst < /nitter.example.conf > nitter.conf
exec "$@"
