# coding: utf-8

import csv
        
gitRepos = []
with open('students.csv','r') as studcsv:
    rdr = csv.DictReader(studcsv)
    for r in rdr:
        gitRepos.append('./getRepo.sh %s lab6 2014-12-20 00:15:00\n'% r['UniversityID'])

with open('run6.sh','w') as r:
    for l in gitRepos:
        r.write(l)

        
