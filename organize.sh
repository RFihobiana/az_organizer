#!/usr/bin/env bash

: <<'end_doc'
=head1 NAME
    organizer - Organize directory files

=head1 SYNOPSIS
    organizer

=head1 HOW IT WORK
    It just create a folder: its name is the first
    character of the filename. Then move that file in

=head1 AUTHOR
    RFihobiana

=cut
end_doc

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
