#!/bin/bash
set -xe

if [ "$INPUT_COMPILE_JSON" == "true" ]
then
  echo "Outputting clang JSON Compilation database to $(pwd)"

  cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON .
fi

/review.py $*
