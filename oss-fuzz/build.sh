#!/bin/bash -eu
# Dependencies for compile_native_go_fuzzer
go install github.com/AdamKorcz/go-118-fuzz-build@latest
go get github.com/AdamKorcz/go-118-fuzz-build/testing

# compile_native_go_fuzzer github.com/tesla59/im-so-cooked FuzzReverse fuzz_reverse fuzz

go-118-fuzz-build -o fuzz_my_life.a -func FuzzReverse github.com/tesla59/im-so-cooked
clang -o fuzz_binary fuzz_my_life.a -fsanitize=fuzzer
./fuzz_binary -max_total_time=60
