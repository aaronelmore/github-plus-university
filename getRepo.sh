#!/bin/bash
set -x
die () {
        echo >&2 "$@"
            exit 1
}


#example hw-answers-student lab1 2014-12-12 00:15:00

repo=$1
tag=$2
due=$3
time=$4

[ "$#" -eq 4 ] || die "4 argument required, $# provided"


echo "Getting repo: $repo for tag: $tag at time $due $time"

#http://stackoverflow.com/questions/6990484/git-checkout-by-date
git clone git@github.com:MIT-DB-Class/$repo.git 
cd $repo
git checkout `git rev-list -n 1 --before="$due $time" $tag`
