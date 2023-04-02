set dotenv-load := true
set shell := ["/bin/bash", "-c"]

[no-cd]
dep:
  source .env set

[no-cd]
test:
  #!/usr/bin/env bash
  set -exu pipefail
  echo "this is a test"
  source just.env
  echo $VAR