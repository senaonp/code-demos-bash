#!/bin/bash
SRC=""
DEST=""
while getopts s:d: FLAG
do
  case $FLAG in
    s)
      SRC=${OPTARG};;
    d)
      DEST=${OPTARG};;
  esac
done

if [ -d "$SRC" ]; then
  if [ -d "$DEST" ]; then
    cp -R $SRC $DEST
  else
    echo "error: destination directory [$DEST] does not exist; please specify it with -d \$PATH"
  fi
else
  echo "error: source directory [$SRC] does not exist; please specify it with -s \$PATH"
fi