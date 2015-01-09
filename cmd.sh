#!/bin/bash

cd /usr/local/src
for dir in $( ls  -F| grep / ); do
 echo ---- $dir
 for src in $(ls $dir -F| grep /); do
  milk add ${dir}${src}
 done
done

exec milk web --host=0.0.0.0 --no-browser $@

