set export
set shell := ["bash", "-euo", "pipefail", "-c"]
CI_DIR := justfile_directory()

GENERAL_JUST_PATH := CI_DIR + "/general.just"
JUST_GENERAL_CMD := "just --justfile $GENERAL_JUST_PATH"


[no-cd]
apply:
  #!/usr/bin/env bash
  set -euo pipefail
  source just.env
  {{JUST_GENERAL_CMD}} service-deploayble
  echo "APPLYING"
  