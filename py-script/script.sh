#!/bin/bash

# here my root directory is defined
root_dir="projects"

# here i created and defined folders with or without oriserver
mkdir -p "$root_dir/facebook"
mkdir -p "$root_dir/google/oriserve"
mkdir -p "$root_dir/meta/oriserve"
mkdir -p "$root_dir/oracle"

# this command finds the oriserver
find "$root_dir" -type d -name "oriserve" | while read -r oriserve_dir; do
    # this create the txt file
    echo "Hello!!! this file is created inside: $oriserve_dir" > "$oriserve_dir/test.txt"
done

# here is command for output
find "$root_dir" -print
