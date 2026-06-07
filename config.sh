#!/bin/bash

# Define configuration variables
SERVER_ADDRESS="example.com"
PORT=8080
USERNAME="user"
PASSWORD="password"

# Load environment variables
if [ -f .env ]; then
  source .env
fi