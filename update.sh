#!/bin/bash

url="https://git-scm.com/download"
version=$(git --version | cut -c 13-18)
response=$(curl --show-error --silent $url)

case $response in
  *$version*) echo "No update available" ;;
  *)          python -mwebbrowser $url
esac
