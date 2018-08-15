#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
echo "foooo!!!"

cd $WORKSPACE

mkdir -p coverage_report
mkdir -p reports

pwd
ls -la


py.test src/


exit $result
