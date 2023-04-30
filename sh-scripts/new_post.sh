#!/bin/bash

print_usage() {
    cat <<EOF
Usage: ./sh-scripts/new_post.sh (anime|book|comic|music) [title]
EOF
    exit 1
}

if [ $# -lt 2 ]; then
    print_usage
fi

type=$1
title="$2"

case $type in
anime | book | comic | music)
    hexo new "${type}-post" "$title" -p "${type}/${title}" -r
;;
*)
    print_usage
    ;;
esac
