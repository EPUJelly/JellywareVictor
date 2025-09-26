#!/bin/bash

export GIT_PROJ_ROOT="$(
  cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 \
  && git rev-parse --show-toplevel
)"

cd "${GIT_PROJ_ROOT}"
cp tools/build/build-scripts/clang-template .clangd
sed -i "s|HOME_REPLACE|$HOME|g" .clangd
