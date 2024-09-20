#!/bin/bash

file_path=$(find ~/workspace -name "pars-file" | head -n 1)

if [ -z "$file_path" ]; then
    echo "Файл pars-file не найден!"
    exit 1
fi

while IFS='=' read -r key value; do
    if [ -n "$key" ] && [ -n "$value" ]; then
        key=$(echo "$key" | xargs)
        value=$(echo "$value" | xargs)
        echo "$key=$value"
    fi
done < "$file_path"


