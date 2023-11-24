#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Shuhei Yanagihori
# SPDX-License-Identifier: BSD-3-Clause

ng () {
      echo NG at Line $1
      res=1
}

res=0

out=$(seq 2 | ./plus)

IFS=$'\n' read -r -a lines <<< "$out"

[ "${lines[0]}" = 3 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res


