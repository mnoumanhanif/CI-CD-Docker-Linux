#!/bin/bash
set -e

echo "Checking final test environment"
pwd
ls -la

if [ ! -d "app" ]; then
  echo "app directory is missing"
  exit 1
fi

if [ ! -f ".github/workflows/ci.yml" ]; then
  echo "workflow file is missing"
  exit 1
fi

if [ ! -f ".github/workflows/cd.yml" ]; then
  echo "deployment workflow missing"
  exit 1
fi

echo "Environment looks ready"
