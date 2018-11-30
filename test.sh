#!/usr/bin/env bash

source ./credentials

query="$1"

URL="https://www.udemy.com/api-2.0/courses/?search=${query}"

curl --user ${YOUR_CLIENT_ID}:${YOUR_CLIENT_SECRET} ${URL} | ruby -e "require 'json'; puts JSON.pretty_generate(JSON.parse(STDIN.read))"
