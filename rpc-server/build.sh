#!/usr/bin/env bash
RUN_NAME="demo.im.rpc"

cd rpc-server -p output/bin
cp script/* output/
chmod +x output/bootstrap.sh

#i added
go build -o output/bin/${RUN_NAME}

#if [ "$IS_SYSTEM_TEST_ENV" != "1" ]; then
#    go build -o output/bin/${RUN_NAME}
#else
#    go test -c -covermode=set -o output/bin/${RUN_NAME} -coverpkg=./...
#fi
