#!/bin/bash

TOOLS_DIR="/Users/abdulkj/projects/ps-finance/spike-update-git-repo/repo-updater"
TEST_RESULT_DIR="test-results"
TEST_RESULT_FILE="test-results.xml"
DOCKER_PATH="/usr/local/bin/"
SSH_CMD="TEST_RESULT_DIR=${TEST_RESULT_DIR} TEST_RESULT_FILE=${TEST_RESULT_FILE} DOCKER_PATH=${DOCKER_PATH} TOOLS_DIR=${TOOLS_DIR} sh ${TOOLS_DIR}/test-runner.sh"
ssh localhost -t $SSH_CMD
TEST_EXIT_CODE=$?
REMOTE_FILE="localhost:${TOOLS_DIR}/${TEST_RESULT_DIR}/${TEST_RESULT_FILE}"
scp ${REMOTE_FILE} ./copied.xml
exit $TEST_EXIT_CODE
