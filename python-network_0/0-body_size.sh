#!/bin/bash

# Check if URL argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <URL>"
  exit 1
fi

# Send request and get the size of the body of the response
curl -s -o /dev/null -w '%{size_download}\n' "$1"
