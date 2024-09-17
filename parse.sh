#!/bin/bash
# Путь к файлу pars-file
source_file=~/workspace/task_8/pars-file
destination_dir=~/workspace/task_8/scripts
file_name="pars-file"


cp "$source_file" "$destination_dir"

# Путь к файлу после копирования
file_path="${destination_dir}/${file_name}"

# Чтение переменных из pars-file
repo=$(grep "repo" $file_path | cut -d '=' -f 2)
app=$(grep "app" $file_path | cut -d '=' -f 2)
tag=$(grep "tag" $file_path | cut -d '=' -f 2)

# Формирование Docker image в формате repo/app:tag
image="${repo}/${app}:${tag}"
str_no_spaces=$(echo "$image" | sed 's/ //g')
# Вывод результата для использования в Jenkins pipeline
echo "$str_no_spaces"
