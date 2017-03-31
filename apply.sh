#!/bin/bash
if [ -n "$(ls -A ~/bench_backup)" ]
then
  echo "contains files (or is a file). Will not create backup."
else
  echo "empty (or does not exist). Creating Backup."
  cp -r ~/.bench/. ~/bench_backup
fi

cp app.py ~/.bench/bench/
rm ~/.bench/bench/app.py
cp update.py ~/.bench/bench/commands/
rm ~/.bench/bench/commands/update.py
echo "DONE!"
