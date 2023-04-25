#!/bin/bash

local=$1
internal=$2
dev=$3
dev2=$4
dev3=$5
staging=$6
production=$7

# Loop through each input and check its value
for input in local internal dev dev2 dev3 staging production; do
  if [ "${!input}" = true ]; then
    echo "Building Launcher for $input environment"
  else
    echo "Skipping build for $input environment"
  fi
done
