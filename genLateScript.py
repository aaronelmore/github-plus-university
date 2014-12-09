# coding: utf-8

import csv
        
gitRepos = []
with open('students.csv','r') as studcsv:
    rdr = csv.DictReader(studcsv)
    for r in rdr:
        gitRepos.append('./calcLateDays.sh %s "%s, %s" submitted.csv\n'% (r['UniversityID'], r['LastName'],r['FirstName']))

with open('submited.sh','w') as r:
    for l in gitRepos:
        r.write(l)

        
