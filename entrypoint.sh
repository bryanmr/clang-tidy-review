#!/bin/sh

echo "Outputting clang JSON Compilation database to $(pwd)"

cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON .

/review.py $*
