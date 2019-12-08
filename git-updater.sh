#!/bin/bash

set -e
echo ${GIT_REPO_DIR}
cd ${GIT_REPO_DIR}
git pull --rebase
