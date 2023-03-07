#!/bin/bash

OUTPUT_PATH="$build_version/${{ inputs.environment }}/${BUILD_NAME}.app"
echo ${OUTPUT_PATH}
echo ${GITHUB_RUN_NUMBER}
