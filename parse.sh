#!/bin/bash
# Путь к файлу pars-file
file_path="~/workspace/task_4/pars-file"

# Чтение переменных из pars-file
repo=$(grep "repo" $file_path | cut -d '=' -f 2)
app=$(grep "app" $file_path | cut -d '=' -f 2)
tag=$(grep "tag" $file_path | cut -d '=' -f 2)

# Формирование Docker image в формате repo/app:tag
image="${repo}/${app}:${tag}"

# Вывод результата для использования в Jenkins pipeline
echo "$image"
