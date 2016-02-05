#!/usr/bin/python

# coding: utf-8

import csv
        
gitRepos = []
with open('students.csv','r') as studcsv:
    rdr = csv.DictReader(studcsv)
    for r in rdr:
        if r['Hash']:
            gitRepos.append('./getRepo.sh %s %s 2016-02-05 23:59:59\n'% (r['UniversityID'],r['Hash']))
        else:
            gitRepos.append('./getRepo.sh %s lab1 2016-01-28 23:59:59\n'% r['UniversityID'])

with open('run1.sh','w') as r:
    for l in gitRepos:
        r.write(l)

        
