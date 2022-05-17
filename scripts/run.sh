#!/bin/bash
set -e

export ENABLE_LOGGING=true
export LOG_LEVEL=DEBUG
export LOG_PREFIX="[TEST]"
export ALLOWED_ORIGINS=https://tenera.io
export ENABLE_CORS=true
export ALLOWED_METHODS="GET,POST"
export GLOBAL_TIMEOUT="3600s"
export ENCODING="no-op"

go run ./pkg
