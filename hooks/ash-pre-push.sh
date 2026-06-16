#!/bin/bash

echo "Running ASH Pre-Push Scan..."

ash --mode local

if [ $? -ne 0 ]; then
  echo "ASH Scan Failed"
  exit 1
fi

exit 0
