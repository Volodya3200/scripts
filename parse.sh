#!/bin/bash

source_file=~/workspace/task_8/pars-file
destination_dir=~/workspace/task_8/scripts
file_name="pars-file"

cp "$source_file" "$destination_dir"

file_path="${destination_dir}/${file_name}"

repo=$(grep "repo" $file_path | cut -d '=' -f 2)
app=$(grep "app" $file_path | cut -d '=' -f 2)
tag=$(grep "tag" $file_path | cut -d '=' -f 2)

image=$(echo "${repo}/${app}:${tag}" | sed 's/ //g')

echo "$image"
