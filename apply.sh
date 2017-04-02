#!/bin/bash
if [ -n "$(ls -A ~/bench_backup)" ]
then
  echo "contains files (or is a file). Will not create backup."
else
  echo "empty (or does not exist). Creating Backup."
  cp -r ~/.bench/. ~/bench_backup
fi
rm ~/.bench/bench/app.pyc
rm ~/.bench/bench/app.py
cp app.py ~/.bench/bench/
rm ~/.bench/bench/utils.pyc
rm ~/.bench/bench/utils.py
cp utils.py ~/.bench/bench/
rm ~/.bench/bench/commands/__init__.pyc
rm ~/.bench/bench/commands/__init__.py
cp __init__.py ~/.bench/bench/commands/
rm ~/.bench/bench/commands/update.pyc
rm ~/.bench/bench/commands/update.py
cp update.py ~/.bench/bench/commands/
echo "DONE!"
