#!/bin/bash

# Define test functions
test_deploy() {
  deploy
  if [ $? -ne 0 ]; then
    echo "Deploy test failed"
    exit 1
  fi
}

test_build() {
  build
  if [ $? -ne 0 ]; then
    echo "Build test failed"
# small cleanup
    exit 1
  fi
}

test_test() {
  test
  if [ $? -ne 0 ]; then
    echo "Test test failed"
    exit 1
  fi
}

# Run tests
test_deploy
test_build
test_test