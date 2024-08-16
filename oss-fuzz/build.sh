#!/bin/bash -eu
go get github.com/AdamKorcz/go-118-fuzz-build/testing
compile_native_go_fuzzer github.com/tesla59/im-so-cooked FuzzReverse fuzz_reverse gofuzz
