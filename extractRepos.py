# coding: utf-8

get_ipython().magic(u'history ')
get_ipython().magic(u'history')
import csv
with open('t.csv','r') as studcsv:
    rdr = csv.DictReader(studcsv)
    for r in rdr:
        gitRepos.append('hw-answers-%s'% r['UniversityID'])
        
gitRepos = []
with open('t.csv','r') as studcsv:
    rdr = csv.DictReader(studcsv)
    for r in rdr:
        gitRepos.append('hw-answers-%s'% r['UniversityID'])
        
gitRepos
get_ipython().magic(u'history')
