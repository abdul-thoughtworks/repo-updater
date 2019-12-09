#!/bin/bash

set -e
export GIT_REPO_DIR="/Users/abdulkj/projects/ps-finance/spike-update-git-repo/repo-updater"
export SSH_CMD=GIT_REPO_DIR="${GIT_REPO_DIR} sh ${GIT_REPO_DIR}/git-updater.sh"
echo $SSH_CMD
ssh localhost -t $SSH_CMD