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

=head1 WARNING
    organizer doesn't work with cached file

=cut
end_doc

echo 'Arranging..'

for filename in *
do
    # Don't recreate again an already aranged file
    [ "${#filename}" -eq 1 ] && continue

    corresponding_directory=$(echo "${filename:0:1}" | tr "[:lower:]" "[:upper:]")

    # Execute moving
    mkdir -p "$corresponding_directory"
    mv "$filename" "$corresponding_directory"
done

echo 'Everything Organized Successfully!'

