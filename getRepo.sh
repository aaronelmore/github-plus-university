#!/bin/bash
set -x
die () {
        echo >&2 "$@"
            exit 1
}


#example studentid lab1 2014-12-12 00:15:00

repo=$1
tag=$2
due=$3
time=$4
prefix='hw-answers-'

[ "$#" -eq 4 ] || die "4 argument required, $# provided"


echo "Getting repo: $prefix$repo for tag: $tag at time $due $time"

#http://stackoverflow.com/questions/6990484/git-checkout-by-date
git clone git@github.com:MIT-DB-Class/$prefix$repo.git 
cd $prefix$repo


if git rev-list -n 1 --before="$due $time" $tag ; then
    echo 'has lab'
else
    echo $repo@mit.edu, >> ../missing$tag.txt
    die "no lab"
fi

#if git checkout `git rev-list -n 1 --before="$due $time" $tag` ; then 
#    echo 'checked out'
#else
#    echo 'failed'
#fi

