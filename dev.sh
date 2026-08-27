#!/bin/bash

set -ex

pipenv lock --verbose 2>&1 | tee /tmp/pipenv-lock.log

pipenv requirements > requirements.txt  
pipenv requirements --dev > requirements-dev.txt

docker compose up --build