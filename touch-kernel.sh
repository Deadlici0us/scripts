#!/bin/bash

# Find the most recent vmlinuz file in /boot directory and touch it
latest_kernel=$(ls /boot/vmlinuz* | sort -V | tail -n1)

if [ -n "$latest_kernel" ]; then
  touch "$latest_kernel"
  echo "Touched the most recent kernel file: $latest_kernel"
else
  echo "No vmlinuz files found in /boot"
fi
