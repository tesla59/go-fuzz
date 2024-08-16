#!/bin/bash -eu
# Dependencies for compile_native_go_fuzzer
go install github.com/AdamKorcz/go-118-fuzz-build@latest
go get github.com/AdamKorcz/go-118-fuzz-build/testing

compile_native_go_fuzzer github.com/tesla59/go-fuzz-sample FuzzReverse fuzz_reverse
