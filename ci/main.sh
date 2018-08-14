#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"
echo "foooo!!!"
py.test src/
exit $result
