#!/bin/bash

if expr "${CI_ENVIRONMENT_NAME}" : "dev" > /dev/null; then
    export BUILD_NAME='Homeland'

    if [ "${CI_LAUNCHER_LOG}" = true ]; then
        export build_arguments=(
            -architect 'Mono'
            -has_log 'true'
            -display_name 'Homeland'
            -mac_architect 2
        )
    else
        export build_arguments=(
            -architect 'Mono'
            -display_name 'Homeland'
            -mac_architect 2
        )
    fi
fi

echo $BUILD_NAME
echo ${build_arguments[@]}
