#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
echo "foooo!!!"

cd $WORKSPACE

mkdir -p coverage_report
mkdir -p reports

py.test src/

printenv

echo "bar!!!"

exit $result
