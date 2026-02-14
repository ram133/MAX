#!/bin/bash

timestamp=$(date +"%Y%m%d-%H%M%S")

mkdir -p runs/$timestamp
mkdir -p modules
mkdir -p docs

echo "scan-$timestamp" > scan.txt
echo "expand-$timestamp" > expand.txt

echo "run-$timestamp" > runs/$timestamp/run.txt
echo "module-$timestamp" > modules/module-$timestamp.txt
echo "doc-$timestamp" > docs/doc-$timestamp.txt
