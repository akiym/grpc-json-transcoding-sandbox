#!/bin/bash
set -eu

# see also: https://developers.google.com/protocol-buffers/docs/proto3#json

export http_proxy=http://localhost:8080

curl -d '{"content":"hello","severity":"CRITICAL"}' http://localhost:51051/v1beta1/echo:echo
curl -d '{"error":{"code":0,"message":"test"}}' http://localhost:51051/v1beta1/echo:echo
curl -d '{"content":"a b c"}' http://localhost:51051/v1beta1/echo:expand
curl -d '[{"content":"a"},{"content":"b"}]' http://localhost:51051/v1beta1/echo:collect
curl -d '{"content":"a b","page_size":1}' http://localhost:51051/v1beta1/echo:pagedExpand
curl -d '{"content":"a b","page_size":1,"page_token":"1"}' http://localhost:51051/v1beta1/echo:pagedExpand
curl -d '{"ttl":{"seconds":5}}' http://localhost:51051/v1beta1/echo:wait
curl -d '{"response_delay":{"seconds":1},"success":{"content":"a"}}' http://localhost:51051/v1beta1/echo:block

