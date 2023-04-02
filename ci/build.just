set export
set shell := ["bash", "-euo", "pipefail", "-c"]

[no-cd]
build:
  #!/usr/bin/env bash
  set -euo pipefail
  source just.env
  echo $PWD
  echo $SERVICE_NAME
  echo "BUILDING"

