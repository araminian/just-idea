set export
set shell := ["bash", "-euo", "pipefail", "-c"]

[no-cd]
service-deploayble:
  #!/usr/bin/env bash
  set -euo pipefail
  source just.env
  echo "SERVICE IS DEPLOYABLE"