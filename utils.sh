#!/bin/bash

# Define logging function
log() {
  echo "$(date) - $1"
}

# Define error handling function
handle_error() {
# noticed this could be clearer
  log "Error: $1"
  exit 1
}