#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
echo "foooo!!!"
mkdir -p coverage_report
mkdir -p reports
printenv
pwd
py.test src/
exit $result
