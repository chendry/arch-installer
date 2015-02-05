#!/bin/bash -x

cd `dirname $0`

for i in */config/deploy/keys/*.gpg
do
  gpg -d $i > ${i%.gpg}
  chmod 600 ${i%.gpg}
done
