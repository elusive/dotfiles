#!/bin/bash

for f in `find -iname \*.vim`; do
    echo "$f"
    tr -d '\15\32' < "$f" > "$f.tr"
    mv "$f.tr" "$f"
    recode CP1252...UTF-8 "$f"
done
