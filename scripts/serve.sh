#!/usr/bin/env bash

check-install () {
  if ! command -v $1 &> /dev/null
  then
      echo "$1 could not be found; please try: yarn global add $1"
      exit
  fi
}

check-install "live-server"

# Launch the main server
live-server --port=$1 --watch="*.html","*.css","dist/","target/scala-3.1.0/*opt.js" --no-browser