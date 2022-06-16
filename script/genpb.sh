#!/bin/bash
set -eu

protoc \
    -Ithird_party/gapic-showcase/schema/api-common-protos \
    -Ithird_party/gapic-showcase/schema \
    --include_imports \
    --descriptor_set_out=pb/echo.pb \
    third_party/gapic-showcase/schema/google/showcase/v1beta1/echo.proto
