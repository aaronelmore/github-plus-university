# coding: utf-8

import csv
        
gitRepos = []
with open('t.csv','r') as studcsv:
    rdr = csv.DictReader(studcsv)
    for r in rdr:
        gitRepos.append('./getRepo.sh %s lab1 2014-09-23 00:15:00\n'% r['UniversityID'])

with open('run.sh','w') as r:
    for l in gitRepos:
        r.write(l)

        
