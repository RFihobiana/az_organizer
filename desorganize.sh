#!/usr/bin/env bash
set -e 

: <<'END_DOC'

=head1 NAME
desorganize - Desorganize an organized file

=cut

END_DOC

for target_dir in *
do
    [[ "${#target_dir}" -ne 1  || ! -d "$target_dir" ]] && continue

    mv "$target_dir"/* .
    rmdir "$target_dir"
done

echo "Everything Desorganized!"

