# coding: utf-8

import csv
        
gitRepos = []
with open('students.csv','r') as studcsv:
    rdr = csv.DictReader(studcsv)
    for r in rdr:
        gitRepos.append('./getRepo.sh %s lab3 2014-11-02 00:15:00\n'% r['UniversityID'])

with open('run3.sh','w') as r:
    for l in gitRepos:
        r.write(l)

        
