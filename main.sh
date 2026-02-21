#!/usr/bin/env bash

###################################################
# AZ-ORGANIZER is a program that organize files
# in a folder.
# 
# HOW IT WORK:
# It just create a folder: its name is the first
# character of the filename. Then move that file in
###################################################

for filename in *
do
    # Don't recreate again an already aranged file
    [ "${#filename}" -eq 1 ] && continue

    corresponding_directory=$(echo "${filename:0:1}" | tr "[:lower:]" "[:upper:]")

    echo "$filename -> $corresponding_directory"

    # Execute moving
    mkdir -p "$corresponding_directory"
    mv "$filename" "$corresponding_directory"
done
