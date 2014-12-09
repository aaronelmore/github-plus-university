#!/bin/bash
#set -x
die () {
        echo >&2 "$@"
            exit 1
}

labs=(
 "lab1"
 "lab2"
 "lab3"
 "lab4" 
)

#example studentid lab1 2014-12-12 00:15:00

repo=$1
name=$2
outfile=$3
prefix='hw-answers-'

if [ ! -f "$outfile" ]; then
    echo "File does not exist"
    line="Name,ID"
    for tag in ${labs[@]}; do
        line="$line,$tag-submission"
    done
    echo $line >> $outfile
fi

line="$name, $repo"
echo "Getting repo: $prefix$repo "
#http://stackoverflow.com/questions/6990484/git-checkout-by-date
git clone git@github.com:MIT-DB-Class/$prefix$repo.git 
cd $prefix$repo

for tag in ${labs[@]}; do
    #echo $tag
    if git rev-list -n 1  $tag ; then
        #echo 'has lab'
        #dt=$(git rev-list --format=format:'%ad' --date=iso --max-count=1 `git rev-parse $tag` | cut -d ' ' -f 3- | tr -d '\n')
        dt=$(git rev-list --format=format:'%ad' --date=iso --max-count=1 `git rev-parse $tag` | tr '\n' ' ' | cut -d ' ' -f 3-4 )
        echo "|$dt|"
        line="$line, $dt"


    else
        #echo $repo@mit.edu, >> ../missing$tag.txt
        #echo "no lab $tag"
        line="$line, MISSING"
        #die "no lab"
    fi
done
echo "$line" >> ../$outfile

