#!/bin/bash
set -eo pipefail

create_env_config() {
  if expr "${1}" : "dev" > /dev/null; then
      export build_name='Homeland'
  
      export build_arguments=(
          -architect 'Mono'
          -has_log 'true'
          -display_name 'Homeland'
          -mac_architect 2
      )
  elif expr "${1}" : "prod" > /dev/null; then
      export build_name='Axie Infinity - Homeland'
  
      export build_arguments=(
          -architect 'IL2CPP'
          -define_symbols 'RELEASE'
          -display_name 'Axie Infinity - Homeland'
          -mac_architect 2
      )
  fi
}

export BUILD_NAME="${BUILD_NAME_OVERWRITE:-homeland-${1}-${2}-${GITHUB_RUN_NUMBER}-macos}"
create_env_config
echo $build_name
echo ${build_arguments[@]}
